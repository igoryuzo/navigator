const { Client } = require('pg');
// const moment = require('moment');

/**
 * Fetch stocks from db
 * 
 * @param {Object} request
 * @param {Number} batchId
 */
const fetchStocks = async (request, batchId) => {
	try {
		const client = new Client();
		await client.connect();
		console.log(batchId)
		let query = `SELECT records.*, (((fair_value - stocks.current_value) / fair_value ) * 100) AS percentage, stocks.logo
		 				FROM records
		 				INNER JOIN stocks ON stocks.id = records.stock_id
		 				WHERE batch_id = '` + batchId + `'
		 				AND fair_value > 0
		 				AND stocks.current_value > 0
		 				AND fair_value > stocks.current_value`;
		if (request.orderBy && request.order) { 
			query += ` ORDER BY ` + request.orderBy + ` ` + request.order;
		}
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
const fetchLatestBatch = async () => {
	try {
		const client = new Client();
		await client.connect();
		const query = `SELECT * FROM script_batch
						WHERE status = 'completed'
						ORDER BY created_at DESC
						LIMIT 1`;
		// const query = `SELECT * FROM stocks WHERE id > 301`;
		const result = await client.query(query);
		await client.end();
		// console.log("==> ", result);
		return result && result.rows && result.rows.length ? result.rows[0] : false;
	} catch (error) {
		console.log("ERROR in fetchLatestBatch : ", error)	;
		return 0;
	}	
};

const evaluate = async (req, res, next) => {
	try {
		const latest = await fetchLatestBatch();
		if (!latest) { return res.json({ success: true, message: 'No records found!' }); }
		// return res.json({ success: false, message: 'asdsad', params: req.params });
		const latestBatchId = latest.id;

		const request = {
			orderBy	: (req.body.orderBy) ? req.body.orderBy : (req.params.orderBy ? req.params.orderBy : 'percentage'),
			order	: (req.body.order) ? req.body.order : (req.params.order ? req.params.order : 'DESC'),
		};

		const result = await fetchStocks(request, latestBatchId);
		// console.log(result);
		console.log(result.length);
		return res.json({ success: true, message: 'Evaluated data successfully', data: { rows: result, latest } });
	} catch (error) {
		if (browser) { try { await browser.close(); } catch (error) { console.log("NO BROWSER") } }
		next(new ErrorHandler(200, config.common_err_msg, error));
	}
};

/**
 * Fetch latest script running date from db
 * 
 * @returns {Object}
 */
const fetchAllBatch = async () => {
	try {
		const client = new Client();
		await client.connect();
		const query = `SELECT * FROM script_batch
						ORDER BY created_at DESC`;
		const result = await client.query(query);
		await client.end();
		// console.log("==> ", result);
		return result && result.rows ? result.rows : [];
	} catch (error) {
		console.log("ERROR in fetchLatestBatch : ", error)	;
		return [];
	}	
};


const get_script_batches = async (req, res, next) => {
	try {
		const batches = await fetchAllBatch();
		return res.json({ success: true, message: 'Evaluated data successfully', data: { batches } });
	} catch (error) {
		if (browser) { try { await browser.close(); } catch (error) { console.log("NO BROWSER") } }
		next(new ErrorHandler(200, config.common_err_msg, error));
	}
};

module.exports = {
	evaluate,
	get_script_batches
};