const puppeteer = require('puppeteer');
const fs = require('fs');
const csv = require('fast-csv');
const path = require('path');
const dotenv = require('dotenv');
const { Client } = require('pg');
const axios = require('axios');

axios.defaults.baseURL = 'https://api.polygon.io/';
dotenv.config();

const chunkSize = 50;
let processed = 0;


const formatDate = () => {
	const d = new Date();
	let month = '' + (d.getMonth() + 1),
		day = '' + d.getDate(),
		year = d.getFullYear();

	if (month.length < 2) { month = '0' + month; }
	if (day.length < 2) { day = '0' + day; }

	return [year, month, day].join('-');
}


/**
 * Append scrapped data in output file
 * 
 * @param {Object} rows 
 */
const append = async (row) => {
	try {
		const rowData = {
			userId: row.userId,
			stockId: row.stockId,
			stockSymbol: row.stockSymbol,
			stockName: row.stockName ? row.stockName : '-',
			fairValue: (row.fairValue !== null && row.fairValue !== undefined) ? row.fairValue : 0,
			investmentName: row.investmentName ? row.investmentName : '-',
			starRating: row.starRating ? row.starRating : '-',
			analystRating: row.analystRating ? row.analystRating : '-',
			date: formatDate(),
			comment: row.comment ? row.comment : '',
		};
		processed++;
		// console.log(rowData);
		const query = `INSERT INTO records (		
			user_id,
			stock_id,
			stock_symbol,
			stock_name,
			fair_value,
			investment_name,
			star_rating,
			analyst_rating,
			comment
		) VALUES (
			'` + rowData.userId + `',
			'` + rowData.stockId + `',
			'` + rowData.stockSymbol + `',
			'` + rowData.stockName + `',
			'` + rowData.fairValue + `',
			'` + rowData.investmentName + `',
			'` + rowData.starRating + `',
			'` + rowData.analystRating + `',
			'` + rowData.comment + `'
		)`;
		// console.log(query);
		const client = new Client();
		await client.connect();
		const result = await client.query(query);
		// console.log('Record insert successfully : ', result);
		await client.end();
		return result;
		// const csvFile = fs.createWriteStream("assets/output.csv", { flags: 'a' });
		// csvFile.write('\n');
		// csv.writeToStream(csvFile, [rowData], { headers: false });
	} catch (error) {
		console.log("ERROR while inserting record : ",error);
		return false;
	}
};

/**
 * Inialize browser and login into morningstar website
 */
const initialize = async () => {
	try {
		var browser = await puppeteer.launch({ headless: true });
		const page = await browser.newPage();
		await page.setDefaultTimeout(60 * 1000);
		await page.setDefaultNavigationTimeout(300 *  1000);		// Configure the navigation timeout to 5 mins
		await page.waitFor(4000); // Wait for 4 seconds

		await page.goto(process.env.LOGIN_URL);
		await page.type('[name="user"]', process.env.USERNAME);
		await page.type('[name="pass"]', process.env.PASSWORD);
		
		const form = await page.$('#access-databases');
		await form.evaluate(form => form.submit());
		console.log("LOGIN");
		await page.waitForNavigation();
		await page.waitForSelector('a[href^="/Selectors/Fund/Selector.html"]');
		await page.goto(process.env.FUNDS_URL);
		// await page.waitForNavigation();
		console.log("REDIRECTED TO FUNDS PAGE");
		// await page.waitForNavigation();
		return { browser, page };
	} catch (error) {
		console.log(error);
		await browser.close();
	}
};

/**
 * Remove characters that cause line or cell change in CSV
 * 
 * @param {String} value
 * @returns {String} value
 */
const remove_invalid_characters = (value) => {
	if (!value) { return value; }
	value = value.replace(/\r?\n|\r/g, '');
	value = value.replace(/(\r\n|\n|\r)/gm, "");
	value = value.replace(/[;,]/g, '');
	value = value.replace(/,/g, '');
	value = value.replace(/;/g, '');
	value = value.replace(/'/g, `"`);
	return value;
};

/**
 * Fetch user from db
 * 
 * @param {String} username 
 * @returns {Number} id
 */
const fetchUser = async (username) => {
	try {
		const client = new Client();
		await client.connect();
		const query = `SELECT * FROM users WHERE user_name = '` + username + `'`;
		const result = await client.query(query);
		await client.end();
		// console.log("==> ", result.rows[0]);
		return (result && result.rows && result.rows.length) ? result.rows[0].id : 0;
	} catch (error) {
		console.log("ERROR in fetchUser : ", error)	;
		return 0;
	}	
};

/**
 * Create records table
 */
const recordSchema = async () => {
	try {
		const client = new Client();
		await client.connect();
		const result = await client.query(`CREATE TABLE records (
			id SERIAL PRIMARY KEY,
			user_id INT NOT NULL,
			stock_id INT NOT NULL,
			stock_symbol CHAR(20) NOT NULL,
			stock_name VARCHAR,
			fair_value VARCHAR,
			investment_name VARCHAR,
			star_rating VARCHAR,
			analyst_rating VARCHAR,
			comment TEXT,
			created_at TIMESTAMP default current_timestamp
		)`);
		console.log('Records created successfully : ', result);
		await client.end();
		return result;
	} catch (error) {
		console.log("ERROR in fetchUser : ", error)	;
		return 0;
	}	
};


/**
 * Fetch stocks from db
 * 
 * @returns {Array} id
 */
const fetchStocks = async () => {
	try {
		const client = new Client();
		await client.connect();
		const query = `SELECT * FROM stocks`;
		// const query = `SELECT * FROM stocks WHERE id > 301`;
		const result = await client.query(query);
		await client.end();
		// console.log("==> ", result.rows);
		return result && result.rows ? result.rows : false;
	} catch (error) {
		console.log("ERROR in fetchUser : ", error)	;
		return 0;
	}	
};

const evaluate = async (req, res, next) => {
	try {
		return res.json({ success: true, message: 'IN PROGRESS!!!' });
	} catch (error) {
		if (browser) { try { await browser.close(); } catch (error) { console.log("NO BROWSER") } }
		next(new ErrorHandler(200, config.common_err_msg, error));
	}
};

module.exports = {
	evaluate
};