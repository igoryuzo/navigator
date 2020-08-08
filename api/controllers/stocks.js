const { Client } = require('pg');
const WebSocket = require('ws')
const moment = require('moment')
const { ErrorHandler } = require('../helpers/errorhandler');
const config = require('../config');
const API = require('../helpers/axiosApi');


/**
 * Replace characters that cause wrong format in db insertion
 * 
 * @param {String} value
 * @returns {String} value
 */
const replace_invalid_query_characters = (value) => {
	if (!value) { return value; }
	value.name = value.name.replace(/'/g, ``);
	return value;
};

/**
 * Fetch All stocks and insert into Db
 * 
 * @param {*} page 
 */
const fetchTickerDetails = async(symbol, next) => {
	try {
		// console.log("symbol : ",symbol);
		const result = await API.get('v1/meta/symbols/' + symbol + '/company?apiKey=' + process.env.KEY);
		return (result && result.data) ? result.data : false;
	} catch (error) {
		return false;
		// next(new ErrorHandler(200, config.common_err_msg, error));
	}
}


const fetchTickerPrice = async(symbol, next) => {
	try {
		const stocksData = await API.get('v1/last/stocks/' + symbol + '?apiKey=' + process.env.KEY);
		// console.log(stocksData.data);
		const currentPrice = (stocksData.data && stocksData.data.last && stocksData.data.last.price) ? stocksData.data.last.price : 0;

		return currentPrice;
	} catch(err) {
		console.log(err);
		return 0;
	}
}


/**
 * Fetch All stocks and insert into Db
 * 
 * @param {*} page 
 */
const fetchPolygonStocks = async(page, next) => {
	try {
		page = page || 1;
		const stocksData = await API.get('v2/reference/tickers?apiKey=' + process.env.KEY + '&sort=ticker&type=cs&page='+page);
		const tickers = stocksData.data.tickers;
		if(tickers.length > 0){
			console.log(page);
			// console.log(tickers);
			let query = "INSERT INTO stocks (ticker, name, logo, market, locale, type, currency, current_value, active, primaryexchange, updated, codes, url) VALUES "
			for (const [i, value] of tickers.entries()) {
				console.log(page + " - " + i);
				replace_invalid_query_characters(value);
				// console.log("value : ",value);
				const tickerDetails = await fetchTickerDetails(value.ticker, next);
				const tickerPrice = await fetchTickerPrice(value.ticker, next);
				const logo = (tickerDetails && tickerDetails.logo) ? tickerDetails.logo : null;
				console.log("logo : ",logo);
				console.log("tickerDetails : ",tickerDetails);
				// return false;
				query += `( '` + value.ticker + `', '` + value.name + `', '` + logo + `', '` + value.market + `', '` + value.locale + `', '` + value.type + `', '` + value.currency + `', '` + tickerPrice + `', '` + value.active + `', '` + value.primaryExch + `', '` + value.updated + `', '` + JSON.stringify(value.codes) + `', '` + value.url + `' )`;
				if (tickers.length -1 > i) {
					query += `, `
				}
			}			
			// console.log("----------------------------------------------------------------------------- ");
			const client = new Client();
			await client.connect();
			const result = await client.query(query);
			await client.end();
			console.log(result);
			fetchPolygonStocks(page+1);
		} else {
			console.log("DONE!!!")
			return true;
		}
	} catch (error) {
		next(new ErrorHandler(200, config.common_err_msg, error));
	}
};

/**
 * Create records table
 */
const stockSchema = async () => {
	try {
		const client = new Client();
		await client.connect();
		const result = await client.query(`CREATE TABLE stocks (
			id SERIAL PRIMARY KEY,
			ticker VARCHAR,
			name VARCHAR,
			logo VARCHAR(512),
			market VARCHAR,
			locale VARCHAR,
			type VARCHAR,
			currency VARCHAR,
			current_value float8,
			active VARCHAR,
			primaryexchange VARCHAR,
			updated VARCHAR,
			codes VARCHAR,
			url VARCHAR,
			created_at TIMESTAMP default current_timestamp
		)`);
		console.log('Stocks created successfully : ', result);
		await client.end();
		return result;
	} catch (error) {
		console.log("ERROR in fetchUser : ", error)	;
		return 0;
	}	
};

const saveStocks = async (req, res, next) => {
	try {
		//return stockSchema();
		let stocksInserted = await fetchPolygonStocks(1, next);
		return res.json({ success: true, message: 'Saved polygon stocks successfully!', stocksInserted });
		
	} catch (error) {
		next(new ErrorHandler(200, config.common_err_msg, error));
	}
};

/**
 * Fetch stocks from db
 */
const fetchStocks = async () => {
	try {
		const client = new Client();
		await client.connect();
		let query = `SELECT * FROM stocks`;
		const result = await client.query(query);
		await client.end();
		// console.log("==> ", result.rows);
		return result && result.rows ? result.rows : false;
	} catch (error) {
		console.log("ERROR in fetchStocks : ", error)	;
		return 0;
	}	
};

/**
 * Subscribe stocks
 * 
 * @param {*} req 
 * @param {*} res 
 * @param {*} next 
 */
const subscribeStocks = async (req, res, next) => {
	try {
		const APIKEY = process.env.KEY;
		const stocks = await fetchStocks();
		if (!stocks || !stocks.length) { return res.json({ success: false, message: 'No stocks found!' }); }
		let actionParams = '', tickers = [], activeTickers = [];
		stocks.forEach((stock, index) => {
			if (index > 0) {
				actionParams += ', ';
			} else {
				actionParams += 'Q.MSFT, ';
			}
			actionParams += 'Q.' + stock.ticker;
			tickers = [...tickers, stock.ticker];
		});
		// return res.json({ success: false, message: 'test polygon stocks successfully!', tickers });
		const ws = new WebSocket('wss://socket.polygon.io/stocks');
		// Connection Opened:
		ws.on('open', () => {
			console.log('Connected!');
			ws.send(`{"action":"auth", "params":"${APIKEY}"}`);
			ws.send(`{"action":"subscribe", "params": "${actionParams}" }`);
			res.json({ success: false, message: 'Subscribed polygon stocks successfully!' });
			// ws.send(`{"action":"unsubscribe", "params":"T.MSFT,T.AAPL,T.AMD,T.NVDA" }`);
			// ws.close();
		});

		// Per message packet:
		ws.on('message', ( data ) => {
			data = JSON.parse( data )
			data.map(async ( msg ) => {
				console.log('msg:', msg)
				if( msg.ev === 'status' ){
					return console.log('Status Update:', msg.message)
				}
				console.log('Tick:', msg);

				if(msg.sym) {
					try {
						const query = `UPDATE stocks SET current_value = '` + msg.bp + `' WHERE ticker =`+ msg.sym;
						console.log(query);
						const client = new Client();
						await client.connect();
						const result = await client.query(query);
						await client.end();
					} catch(err) {
						console.log(err)
					} 
				}
			});
		});

		ws.on('error', console.log);

		ws.onclose = () => {
			console.log("closed");
		};
	} catch (error) {
		next(new ErrorHandler(200, config.common_err_msg, error));
	}
};

module.exports = {
	saveStocks,
	subscribeStocks
};