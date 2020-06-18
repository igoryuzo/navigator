const puppeteer = require('puppeteer');
const fs = require('fs');
const csv = require('fast-csv');
const path = require('path');
const dotenv = require('dotenv');
dotenv.config();

/**
 * Read CSV file
 */
const read_file = async () =>{
	return new Promise( async (resolve, reject) => {
		let fileRows = [];
		fs.createReadStream(path.resolve(__dirname, 'assets', 'companylist.csv'))
		.pipe(csv.parse({ headers: true }))
		.on('error', error => reject(error))
		.on('data', row => fileRows.push(row))
		.on('end', (rowCount) => {
			console.log(`Parsed ${rowCount} rows`);
			resolve(fileRows);
		});
	});
};

const append = (rows) => {
	const csvFile = fs.createWriteStream("assets/output.csv", { flags: 'a' });
	csvFile.write('\n');
	csv.writeToStream(csvFile, [rows], { headers: false });
}

(async () => {
	try {		
		const fileData = await read_file();
		if (fileData.length) {
			console.log("length : ",fileData.length);
			// let row = fileData[37];
			// console.log(row);
			// for (let i = 0; i < Object.keys(fileData).length; i++) {
			// 	let row = fileData[i];
			// 	var browser = await puppeteer.launch({ headless: true });
			// 	const page = await browser.newPage();
			// 	await page.setDefaultNavigationTimeout(0);		// Configure the navigation timeout

			// 	// let data = [];

			// 	await page.goto(process.env.LOGIN_URL);
			// 	await page.type('[name="user"]', process.env.USERNAME);
			// 	await page.type('[name="pass"]', process.env.PASSWORD);
				
			// 	const form = await page.$('#access-databases');
			// 	await form.evaluate(form => form.submit());
			// 	await page.waitForSelector('a[href^="/Selectors/Fund/Selector.html"]');
			// 	await page.goto(process.env.FUNDS_URL);
			// 	// await page.waitForNavigation();
			// 	await page.waitForSelector('input#AutoCompleteBox');

			// 	// await page.waitForNavigation();
			// 	await page.evaluate(() => document.querySelector('input#AutoCompleteBox').click()); 

			// 	await page.evaluate(() => {
			// 		document.querySelector('input#AutoCompleteBox').value = ''
			// 	});
			// 	await page.type('input#AutoCompleteBox', row.Symbol);
			// 	await page.waitFor(4000);

			// 	/* await page.waitForSelector('div#AutoCompleteDropDown');
			// 	const display = await page.evaluate(() => {
			// 		let dropDownElement = document.getElementById('AutoCompleteDropDown');
			// 		return dropDownElement.css;
			// 		// return dropDownElement.style.display;
			// 	});
			// 	console.log("display : ", display); */

			// 	let dropDownElement = await page.$('table.ACDropDownStyle');
			// 	if (!dropDownElement) {
			// 		console.log(row.Symbol , " - dropDownElement TRY 1 : ", dropDownElement);
			// 		await page.waitFor(6000);
			// 		dropDownElement = await page.$('table.ACDropDownStyle');
			// 		if (!dropDownElement) {
			// 			console.log(row.Symbol , " - dropDownElement TRY 2 : ", dropDownElement);
			// 			let rowData = {
			// 				userId: process.env.USERNAME,
			// 				stockSymbol: row.Symbol,
			// 				stockName: '-',
			// 				fairValue: 0,
			// 				comment: 'No result in autocomplete search'
			// 			};
			// 			append(rowData);
			// 			// data.push(rowData);
			// 			continue;
			// 		}
			// 	}
			// 	// await page.waitForSelector('table.ACDropDownStyle');

			// 	await page.keyboard.press("Enter");
			// 	await page.waitForNavigation();
			// 	await page.waitFor(2000);

			// 	let nameElement = await page.$('span.security-info-name');
			// 	if (!nameElement) {
			// 		console.log(row.Symbol , " - nameElement TRY 1 : ", nameElement);
			// 		await page.waitFor(4000);
			// 		nameElement = await page.$('span.security-info-name');
			// 		if (!nameElement) {
			// 			console.log(row.Symbol , " - nameElement TRY 2 : ", nameElement);
			// 			let rowData = {
			// 				userId: process.env.USERNAME,
			// 				stockSymbol: row.Symbol,
			// 				stockName: '-',
			// 				fairValue: 0,
			// 				comment: 'Name field not found'
			// 			};
			// 			// data.push(rowData);
			// 			append(rowData);
			// 			continue;
			// 		}
			// 	}

			// 	// await page.waitForSelector('span.security-info-name');
			// 	await page.waitForSelector('span.chart-iframe-full-chart-label');
			// 	await page.waitFor(4000);

			// 	/* const stockName = await page.evaluate(() => {
			// 		let stockElement = document.querySelector('span.security-info-name');
			// 		return stockElement.textContent;
			// 	});
			// 	console.log("stockName : ", stockName); */

			// 	const nameHandle = await page.$('span.security-info-name');
			// 	const stockName = await page.evaluate(span => span.innerHTML, nameHandle);
			// 	// console.log("stockName : ", stockName);
			// 	await page.waitForSelector('span.legend-label');

			// 	let legends = await page.evaluate(() => {
			// 		let labels = [...document.querySelectorAll(".legend-items > .legend-item > span.legend-label")];
			// 		return labels.map(label => {
			// 			let labelText = label.textContent.replace(/\n/g, "");
			// 			labelText = labelText.trim();

			// 			let valueText = label.nextElementSibling.textContent.replace(/\n/g, "");
			// 			valueText = valueText.trim();
			// 			return { 
			// 				label: labelText,
			// 				value: valueText
			// 			};
			// 		});
			// 	});
			// 	// console.log(legends);
			// 	let fairValue = 0;
			// 	legends.forEach(legend => {
			// 		if (legend.label.toLowerCase() === 'fair value') {
			// 			fairValue = legend.value;
			// 		}
			// 	});
			// 	// console.log(stockName);
			// 	let rowData = {
			// 		userId: process.env.USERNAME,
			// 		stockSymbol: row.Symbol,
			// 		stockName,
			// 		fairValue
			// 	};
			// 	console.log(rowData);
			// 	append(rowData);
			// 	// data.push(rowData);
			// 	// await page.waitFor(1000);
			// }

			// console.log(data);
			// console.log(data.length);
			// await browser.close();
			console.log("Browser Closed");
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