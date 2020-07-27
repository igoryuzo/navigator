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
const fetchPolygonStocks = async(page, next) => {
	try {
		page = page || 1;
		const stocksData = await API.get('v2/reference/tickers?apiKey=K_2NewK1MVqlDt_e1uVqMqKlnJTU47qwk_hxkD&sort=ticker&type=cs&page='+page);
		const tickers = stocksData.data.tickers;
		if(tickers.length > 0){
			console.log(page);
			console.log(tickers);
			let query = "INSERT INTO stocks (ticker, name, market, locale, type, currency, active, primaryexchange, updated, codes, url) VALUES "
			for (const [i, value] of tickers.entries()) {
				replace_invalid_query_characters(value);
				query += `( '` + value.ticker + `', '` + value.name + `', '` + value.market + `', '` + value.locale + `', '` + value.type + `', '` + value.currency + `', '` + value.active + `', '` + value.primaryExch + `', '` + value.updated + `', '` + JSON.stringify(value.codes) + `', '` + value.url + `' )`;
				if (tickers.length -1 > i) {
					query += `, `
				}
			}			
			/* const client = new Client();
			await client.connect();
			const result = await client.query(query);
			await client.end(); */
			// console.log(result);
			fetchPolygonStocks(page+1);
		} else {
			console.log("DONE!!!")
			return true;
		}
	} catch (error) {
		next(new ErrorHandler(200, config.common_err_msg, error));
	}
}

const saveStocks = async (req, res, next) => {
	try {
		let stocksInserted = await fetchPolygonStocks(1, next);
		return res.json({ success: true, message: 'Saved polygon stocks successfully!', stocksInserted });
		
	} catch (error) {
		next(new ErrorHandler(200, config.common_err_msg, error));
	}
};

module.exports = {
	saveStocks
};