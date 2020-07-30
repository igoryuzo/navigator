const axios = require('axios');
const { base_api_path } = require('../config');

const API = axios.create({
	baseURL: base_api_path,
	// headers: {'Content-Type':  'application/json'}
});

module.exports = API;