const axios = require('axios');
axios.defaults.baseURL = 'https://api.polygon.io/';
const { Client } = require('pg');
const dotenv = require('dotenv');
dotenv.config();

/**
 * Fetch All stocks and insert into Db
 * @param {*} page 
 */
const stocksdata = async(page) => {
    const stocksData = await axios.get('v2/reference/tickers?apiKey=K_2NewK1MVqlDt_e1uVqMqKlnJTU47qwk_hxkD&sort=ticker&type=cs&page='+page);
    const tickers = stocksData.data.tickers;
    if(tickers.length > 0){
        console.log(page+1);
        let query = "INSERT INTO stocks (ticker, name, market, locale, type, currency, active, primaryexchange, updated, codes, url) VALUES "
        for (const [i, value] of tickers.entries()) {
            replace_invalid_characters(value);
            query += `( '` + value.ticker + `', '` + value.name + `', '` + value.market + `', '` + value.locale + `', '` + value.type + `', '` + value.currency + `', '` + value.active + `', '` + value.primaryExch + `', '` + value.updated + `', '` + JSON.stringify(value.codes) + `', '` + value.url + `' )`;
            if (tickers.length -1 > i) {
                query += `, `
            }
        }
        
        const client = new Client();
		await client.connect();
        const result = await client.query(query);
        console.log(result);
        await client.end();
        stocksdata(page+1);
    }else{
        console.log('data completed!');
    }
}

/**
 * Replace characters that cause wrong format in db insertion
 * 
 * @param {String} value
 * @returns {String} value
 */
const replace_invalid_characters = (value) => {
	if (!value) { return value; }
	value.name = value.name.replace(/'/g, ``);
	return value;
};

(async () => {
	try {
        var page = 1;
        const fileData = await stocksdata(page);
    }catch{
        console.log('CATCH ERROR!');
    }
})();
