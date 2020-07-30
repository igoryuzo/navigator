'use strict';

let jwt = require('jsonwebtoken');


const checkToken = (req, res, next) => {
	// console.log('Request URL:', req.originalUrl)
	const permittedUrls = ['/login'];
	let splitUrl = req.originalUrl.split('/');
	req.header_sub_domain = (req.headers['x-sub-domain'] !== undefined) ? req.headers['x-sub-domain'] : '';

	if (permittedUrls.indexOf(req.originalUrl) > -1 || req.method === 'OPTIONS') {
		next();
	} else {
		let token = req.headers['x-access-token'] || req.headers['authorization']; // Express headers are auto converted to lowercase
		if (token) {
			if (token.startsWith('Bearer ')) {
				token = token.slice(7, token.length); // Remove Bearer from string
			}
			jwt.verify(token, process.env.SECRET, (err, decoded) => {
				if (err && req.originalUrl === '/token') {
					next();
				} else if (err && req.originalUrl !== '/token') {
					return res.status(401).json({ success: false, message: 'Invalid token', status: 'logged-out' });
				} else {
					// console.log(decoded);
					req.access_token = token;
					req.user_id = decoded.user_id;
					req.role_id = decoded.role_id;
					req.email = decoded.email;
					req.user_paid_plan_id = decoded.user_paid_plan_id;
					next();
				}
			});
		} else {
			return res.status(401).json({ success: false, message: 'Access denied. No token provided.' });
		}
	}
};

const authorize = async(userData, tokenTime) => {
	tokenTime = tokenTime || '6h';
	let token = await jwt.sign(userData,
		process.env.SECRET, { expiresIn: tokenTime } // expires in 1 hour ( 180000 )
	);
	return token;
};

const refreshToken = async(token, userData, tokenTime) => {

	if (token.startsWith('Bearer ')) {
		token = token.slice(7, token.length); // Remove Bearer from string
	}
	return jwt.verify(token, process.env.SECRET, async(err, decoded) => {
		if (err) {
			return { status: 'error', message: 'expired-token' };
		} else {
			if (decoded.email != userData.email || decoded.user_id != userData.user_id) {
				return json_encode({ status: 'error', message: 'mismatch-token' });
			}
			let newToken = await authorize(userData, tokenTime);
			return { status: 'success', token: newToken };
		}
	});

}


module.exports = {
	checkToken,
	authorize,
	refreshToken,
};