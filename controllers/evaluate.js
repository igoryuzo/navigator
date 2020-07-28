const { Client } = require('pg');
const moment = require('moment');



/**
 * Fetch stocks from db
 * 
 * @returns {Array} id
 */
const fetchStocks = async (date) => {
	try {
		const client = new Client();
		await client.connect();
		const query = `SELECT *, (((fair_value - current_value) / ((fair_value + current_value) / 2) ) * 100) AS percentage FROM records
						WHERE DATE(created_at) >= '` + moment(date).format('YYYY-MM-DD') + `'
						AND fair_value > 0
						AND current_value > 0
						AND fair_value > current_value`;
		// console.log("==> ", query);
		// const query = `SELECT * FROM stocks WHERE id > 301`;
		// targetPrice > currentPrice
		const result = await client.query(query);
		await client.end();
		// console.log("==> ", result.rows);
		return result && result.rows ? result.rows : false;
	} catch (error) {
		console.log("ERROR in fetchUser : ", error)	;
		return 0;
	}	
};

/**
 * Fetch latest script running date from db
 * 
 * @returns {Object}
 */
const fetchLatestDate = async () => {
	try {
		const client = new Client();
		await client.connect();
		const query = `SELECT created_at FROM records
						ORDER BY created_at
						LIMIT 1`;
		// const query = `SELECT * FROM stocks WHERE id > 301`;
		const result = await client.query(query);
		await client.end();
		// console.log("==> ", result);
		return result && result.rows && result.rows.length ? result.rows[0] : false;
	} catch (error) {
		console.log("ERROR in fetchUser : ", error)	;
		return 0;
	}	
};

const evaluate = async (req, res, next) => {
	try {
		const latest = await fetchLatestDate();
		if (!latest) { return res.json({ success: true, message: 'No records found!' }); }
		const latestDate = latest.created_at;
		const result = await fetchStocks(latestDate);
		// console.log(result);
		console.log(result.length);
		return res.json({ success: true, message: 'IN PROGRESS!!!', latestDate, result });
	} catch (error) {
		if (browser) { try { await browser.close(); } catch (error) { console.log("NO BROWSER") } }
		next(new ErrorHandler(200, config.common_err_msg, error));
	}
};

module.exports = {
	evaluate
};