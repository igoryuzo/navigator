const { Client } = require('pg');
const { ErrorHandler } = require('../helpers/errorhandler');
const config = require('../config');
const API = require('../helpers/axiosApi');

// axios.defaults.baseURL = 'https://api.polygon.io/';

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
		next(new ErrorHandler(200, config.common_err_msg, error));
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
			let query = "INSERT INTO stocks (ticker, name, logo, market, locale, type, currency, active, primaryexchange, updated, codes, url) VALUES "
			for (const [i, value] of tickers.entries()) {
				console.log(page + " - " + i);
				replace_invalid_query_characters(value);
				// console.log("value : ",value);
				const tickerDetails = await fetchTickerDetails(value.ticker, next);
				const logo = (tickerDetails && tickerDetails.logo) ? tickerDetails.logo : null;
				// console.log("logo : ",logo);
				// console.log("tickerDetails : ",tickerDetails);
				// return false;
				query += `( '` + value.ticker + `', '` + value.name + `', '` + logo + `', '` + value.market + `', '` + value.locale + `', '` + value.type + `', '` + value.currency + `', '` + value.active + `', '` + value.primaryExch + `', '` + value.updated + `', '` + JSON.stringify(value.codes) + `', '` + value.url + `' )`;
				if (tickers.length -1 > i) {
					query += `, `
				}
			}			
			// console.log("----------------------------------------------------------------------------- ");
			const client = new Client();
			await client.connect();
			const result = await client.query(query);
			await client.end();
			// console.log(result);
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
		// return stockSchema();
		let stocksInserted = await fetchPolygonStocks(1, next);
		return res.json({ success: true, message: 'Saved polygon stocks successfully!', stocksInserted });
		
	} catch (error) {
		next(new ErrorHandler(200, config.common_err_msg, error));
	}
};

module.exports = {
	saveStocks
};