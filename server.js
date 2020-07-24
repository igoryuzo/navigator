const express = require('express');
const routes = require('./routes/routes');
const dotenv = require('dotenv');
dotenv.config();
const port = process.env.PORT || 8000;

const corsMiddleware = require('./middlewares/cors');

const { handleError } = require('./helpers/errorhandler');


function main() {
	const app = express();

	app.use(express.json({ limit: '20mb' }));
	app.use(express.urlencoded({ limit: '20mb', extended: false }));

	app.use(corsMiddleware.corsEnable);

	app.use('/', routes); // Common routing file

	app.use((err, req, res, next) => { // Always use the end of other middlewares and routes for it to function correctly
		handleError(err, res);
	});
	app.listen(port, () => {
		console.log('API server started on: ' + port);
	});
};

main();