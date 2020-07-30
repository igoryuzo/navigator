'user strict';

// const Users = require('../models/userModel');
const config = require('../config');
const bcrypt = require('bcrypt');
const { ErrorHandler } = require('../helpers/errorhandler');
const Auth = require('../middlewares/auth');
const { Client } = require('pg');

const saltRounds = 10;

/**
 * Validate admin credentials
 * 
 * @param {*} req 
 * @param {*} res 
 */
const login = async (req, res, next) => {
	const request = req.body;
	if (!request.email || !request.password) { next(new ErrorHandler(400, 'Missing required email and password fields')); }
	request.password = request.password.trim();
	request.email = request.email.trim();
	
	try {
		const client = new Client();
		await client.connect();
		const query = `SELECT * FROM users
						WHERE email = '` + request.email + `'
						AND is_admin = 1
						LIMIT 1`;
		const result = await client.query(query);
		await client.end();
		if (!result || !result.rows || !result.rows.length) { return next(new ErrorHandler(200, "Email doesn't exist")); }
		const user = result.rows[0];
		// return res.json({ success: false, message: 'Authentication successful!', request, result, user });

		let valid = await bcrypt.compareSync(request.password, user.password);
		if (valid) {
			let userData = {
				user_id: user.id,
				email: user.email,
			};
			// return res.json({ success: false, message: 'Invalid credentails!', userData, user, name: user.full_name });
			let token = await Auth.authorize(userData);
			res.json({ success: true, message: 'Authentication successful!', data: { userData: userData }, token });
		} else {
			res.json({ success: false, message: 'Invalid credentails!', data: {} });
		}
	} catch (error) {
		next(new ErrorHandler(200, config.common_err_msg, error));
	}
};


/**
 * Refresh token
 * 
 * @param {*} req 
 * @param {*} res 
 */
const refresh_token = async(req, res, next) => {
	let token = req.body.token;
	let userData = req.body.userData;
	if (token && userData) {
		try {
			const client = new Client();
			await client.connect();
			const query = `SELECT * FROM users
							WHERE email = '` + userData.email + `'
							AND is_admin = 1
							LIMIT 1`;
			const result = await client.query(query);
			await client.end();
			if (!result || !result.rows || !result.rows.length) {
				return res.status(401).json({ success: false, message: 'Invalid user details', status: 'logged-out' });
			}
			const user = result.rows[0];
			
			let response = await Auth.refreshToken(token, userData);
			return res.json({ success: true, message: 'Authentication successful!', token: response.token });
		} catch (error) {
			return next(new ErrorHandler(200, config.common_err_msg, error));
		}
	} else {
		res.status(400).json({ success: false, message: 'Refresh token failed! Data missing' });
	}
};

/**
 * Create records table
 */
const userSchema = async () => {
	try {
		const client = new Client();
		await client.connect();
		const result = await client.query(`CREATE TABLE users (
			id SERIAL PRIMARY KEY,
			user_name VARCHAR,
			email VARCHAR(100),
			password VARCHAR,
			is_admin INTEGER NOT NULL DEFAULT 0,
			created_at TIMESTAMP default current_timestamp
		)`);
		// console.log('Records created successfully : ', result);
		await client.end();
		return result;
	} catch (error) {
		console.log("ERROR in fetchUser : ", error)	;
		return 0;
	}	
};


/**
 * Create user
 * 
 * @param {*} req 
 * @param {*} res 
 */
const create_user = async (req, res, next) => {	
	/* const request = req.body;
	if (!request.email || !request.password) { throw new ErrorHandler(400, 'Missing required email and password fields'); }
	request.password = request.password.trim();
	request.email = request.email.trim(); */
	
	try {
		// const userTb = await userSchema();
		// return res.json({ success: true, message: 'Table created successfully!', userTb });		
		/* let ifExist = await check_if_email_exist(request.email, false, next);
		if (ifExist) {
			return res.json({ success: false, message: 'Email already exists!' });
		} */
		// hankmoody789
		let user = {
			email	 : 'admin@navigator.com',
			password : 'admin@nav123',
			is_admin : 1,
		};
		user.password = await bcrypt.hashSync(user.password, saltRounds);

		const query = `INSERT INTO users (		
			email,
			password,
			is_admin
		) VALUES (
			'` + user.email + `',
			'` + user.password + `',
			` + user.is_admin + `
		)`;
		console.log(query);
		const client = new Client();
		await client.connect();
		const result = await client.query(query);
		await client.end();
		// return result;
		res.json({ success: true, message: 'Account created successfully!', result });		
	} catch (error) {
		next(new ErrorHandler(200, config.common_err_msg, error));
	}
};


module.exports = {
	login,
	refresh_token,
	create_user,
};