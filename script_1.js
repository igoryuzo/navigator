const puppeteer = require('puppeteer');
const fs = require('fs');
const csv = require('fast-csv');
const path = require('path');
const dotenv = require('dotenv');
const { Client } = require('pg');
dotenv.config();

const chunkSize = 50;
let processed = 0;

/**
 * Read CSV file
 */
const read_file = async () =>{
	return new Promise( async (resolve, reject) => {
		let fileRows = [];
		fs.createReadStream(path.resolve(__dirname, 'assets', 'chunk_1.csv'))
		.pipe(csv.parse({ headers: true }))
		.on('error', error => reject(error))
		.on('data', row => fileRows.push(row))
		.on('end', (rowCount) => {
			console.log(`Parsed ${rowCount} rows`);
			resolve(fileRows);
		});
	});
};

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

		const query = `INSERT INTO records (		
			userId, 
			stockSymbol,
			stockName, 
			fairValue, 
			investmentName, 
			starRating, 
			analystRating, 
			comment
		) VALUES (
			1,
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
		await browser.close();
		console.log(error);
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
			userId INT NOT NULL,
			stockSymbol CHAR(20) NOT NULL,
			stockName VARCHAR,
			fairValue VARCHAR,
			investmentName VARCHAR,
			starRating VARCHAR,
			analystRating VARCHAR,
			comment TEXT,
			createdAt TIMESTAMP default current_timestamp
		)`);
		console.log('Records created successfully : ', result);
		await client.end();
		return result;
	} catch (error) {
		console.log("ERROR in fetchUser : ", error)	;
		return 0;
	}	
};

(async () => {
	try {
		const fileData = await read_file();
		// await recordSchema();
		const userId = await fetchUser(process.env.USERNAME);
		// console.log(userId);
		if (!userId) {
			console.log("USER NOT FOUND");
			/* HALT THE SCRIPT */
			return false;
		}

		if (fileData.length) {
			for (let i = 0; i < Object.keys(fileData).length; i++) {
				const row = fileData[i];
				// const row = fileData[1];
				console.log("processed : ", processed);
				if (processed === 0) {
					var { browser, page } = await initialize();
				}
				await page.waitForSelector('input#AutoCompleteBox');

				// await page.waitForNavigation();
				await page.evaluate(() => document.querySelector('input#AutoCompleteBox').click()); 

				await page.evaluate(() => {
					document.querySelector('input#AutoCompleteBox').value = ''
				});
				await page.type('input#AutoCompleteBox', row.Symbol);
				await page.waitFor(4000);

				let dropDownElement = await page.$('table.ACDropDownStyle');
				if (!dropDownElement) {
					console.log(row.Symbol , " - dropDownElement TRY 1 : ", dropDownElement);
					await page.waitFor(6000);
					dropDownElement = await page.$('table.ACDropDownStyle');
					if (!dropDownElement) {
						console.log(row.Symbol , " - dropDownElement TRY 2 : ", dropDownElement);
						let rowData = {
							userId,
							stockSymbol: row.Symbol,
							stockName: '-',
							fairValue: 0,
							comment: 'No result in autocomplete search'
						};
						await append(rowData);
						await page.waitFor(1000);
						if (processed >= chunkSize) { 
							processed = 0;
							console.log("Browser Closed");
							await browser.close();
							await page.waitFor(2000);
						}
						// data.push(rowData);
						continue;
					}
				}
				// await page.waitForSelector('table.ACDropDownStyle');

				await page.keyboard.press("Enter");
				await page.waitForNavigation();
				await page.waitFor(5000);

				let nameElement = await page.$('span.security-info-name'), normalFormat = true;
				if (!nameElement) {
					console.log(row.Symbol , " - nameElement TRY 1 : ", nameElement);
					await page.waitFor(4000);
					nameElement = await page.$('span.security-info-name');
					if (!nameElement) {
						console.log(row.Symbol , " - nameElement TRY 2 : ", nameElement);
						normalFormat = false;
					}
				}

				if (!normalFormat) {
					let investmentNameElement = await page.$('span.sal-mip-quote__investment-name'), normalFormat = true;
					if (!investmentNameElement) {
						console.log(row.Symbol , " - investmentNameElement TRY 1 : ", investmentNameElement);
						await page.waitFor(4000);
						investmentNameElement = await page.$('span.sal-mip-quote__investment-name');
						if (!investmentNameElement) {
							console.log(row.Symbol , " - investmentNameElement TRY 2 : ", investmentNameElement);
							let rowData = {
								userId,
								stockSymbol: row.Symbol,
								stockName: '-',
								fairValue: 0,
								comment: 'Investment Name field not found'
							};
							// data.push(rowData);
							await append(rowData);
							await page.waitFor(1000);
							if (processed >= chunkSize) { 
								processed = 0;
								console.log("Browser Closed");
								await browser.close();
								await page.waitFor(2000);
							}
							continue;
						}
					}

					const investmentNameHandle = await page.$('span.sal-mip-quote__investment-name');
					let investmentName = await page.evaluate(span => span.innerHTML, investmentNameHandle);
					investmentName  = remove_invalid_characters(investmentName);


					// await page.waitFor(1000);
					let stockElement = await page.$('span.sal-mip-quote__symbol');
					if (!stockElement) {
						console.log(row.Symbol , " - stockElement TRY 1 : ", stockElement);
						await page.waitFor(4000);
						stockElement = await page.$('span.sal-mip-quote__symbol');
						if (!stockElement) {
							console.log(row.Symbol , " - stockElement TRY 2 : ", stockElement);
							let rowData = {
								userId,
								stockSymbol: row.Symbol,
								investmentName,
								fairValue: 0,
								comment: 'Stock symbol not available'
							};
							// data.push(rowData);
							await append(rowData);
							await page.waitFor(1000);
							if (processed >= chunkSize) { 
								processed = 0;
								console.log("Browser Closed");
								await browser.close();
								await page.waitFor(2000);
							}
							continue;
						}
					}

					const stockHandle = await page.$('span.sal-mip-quote__symbol');
					const stockSymbol = await page.evaluate(span => span.innerHTML, stockHandle);

					await page.waitFor(1000);
	
					let rating = await page.evaluate(() => {
						let ratingElem = [...document.querySelectorAll("span.sal-mip-quote__star-rating > i")];
						return ratingElem.length;
					});
					console.log("rating : ", rating);
					let rowData = {
						userId,
						stockSymbol: (stockSymbol) ? stockSymbol : row.Symbol,
						investmentName,
						starRating: rating,
					};
					console.log(rowData);
					await append(rowData);
					await page.waitFor(1000);
					if (processed >= chunkSize) { 
						processed = 0;
						console.log("Browser Closed");
						await browser.close();
						await page.waitFor(2000);
					}
				} else {
					await page.waitForSelector('span.chart-iframe-full-chart-label');

					/* const stockName = await page.evaluate(() => {
						let stockElement = document.querySelector('span.security-info-name');
						return stockElement.textContent;
					});
					console.log("stockName : ", stockName); */
	
					const nameHandle = await page.$('span.security-info-name');
					let stockName = await page.evaluate(span => span.innerHTML, nameHandle);
					stockName  = remove_invalid_characters(stockName);
					// console.log("stockName : ", stockName);

					await page.waitFor(1000);
					let stockElement = await page.$('span.security-info-symbol');
					if (!stockElement) {
						console.log(row.Symbol , " - stockElement TRY 1 : ", stockElement);
						await page.waitFor(4000);
						stockElement = await page.$('span.security-info-symbol');
						if (!stockElement) {
							console.log(row.Symbol , " - stockElement TRY 2 : ", stockElement);
							let rowData = {
								userId,
								stockSymbol: row.Symbol,
								stockName : '-',
								fairValue: 0,
								comment: 'Stock symbol not available'
							};
							// data.push(rowData);
							await append(rowData);
							await page.waitFor(1000);
							if (processed >= chunkSize) { 
								processed = 0;
								console.log("Browser Closed");
								await browser.close();
								await page.waitFor(2000);
							}
							continue;
						}
					}

					const stockHandle = await page.$('span.security-info-symbol');
					const stockSymbol = await page.evaluate(span => span.innerHTML, stockHandle);
	
					await page.waitFor(1000);
					let labelElement = await page.$('span.legend-label');
					if (!labelElement) {
						console.log(row.Symbol , " - labelElement TRY 1 : ", labelElement);
						await page.waitFor(4000);
						labelElement = await page.$('span.legend-label');
						if (!labelElement) {
							console.log(row.Symbol , " - labelElement TRY 2 : ", labelElement);
							let rowData = {
								userId,
								stockSymbol: (stockSymbol) ? stockSymbol : row.Symbol,
								stockName,
								fairValue: 0,
								comment: 'Fair value not available'
							};
							// data.push(rowData);
							await append(rowData);
							await page.waitFor(1000);
							if (processed >= chunkSize) { 
								processed = 0;
								console.log("Browser Closed");
								await browser.close();
								await page.waitFor(2000);
							}
							continue;
						}
					}
	
					await page.waitForSelector('span.legend-label');
	
					let legends = await page.evaluate(() => {
						let labels = [...document.querySelectorAll(".legend-items > .legend-item > span.legend-label")];
						return labels.map(label => {
							let labelText = label.textContent.replace(/\n/g, "");
							labelText = labelText.trim();
	
							let valueText = label.nextElementSibling.textContent.replace(/\n/g, "");
							valueText = valueText.trim();
							return { 
								label: labelText,
								value: valueText
							};
						});
					});
					// console.log(legends);
					let fairValue = 0;
					legends.forEach(legend => {
						if (legend.label.toLowerCase() === 'fair value') {
							fairValue = legend.value;
						}
					});
					// console.log(stockName);
					let rowData = {
						userId,
						stockSymbol: (stockSymbol) ? stockSymbol : row.Symbol,
						stockName,
						fairValue
					};
					console.log(rowData);
					await append(rowData);
					await page.waitFor(1000);
					if (processed >= chunkSize) { 
						processed = 0;
						console.log("Browser Closed");
						await browser.close();
						await page.waitFor(2000);
					}
				}
				
				// data.push(rowData);
				// console.log(i);
				// console.log(fileData.length - 1);
				if (i === fileData.length - 1) {
					console.log("--- COMPLETED ---");
					await browser.close();
				}
			}

			// console.log(data);
			// console.log(data.length);
			// await browser.close();
			// console.log("Browser Closed");
		} else {
			console.log("NO RECORDS FOUND IN CSV");
			await browser.close();
		}	
		// await browser.close();
	} catch (error) {
		await browser.close();
		console.log(error);
	}
})();