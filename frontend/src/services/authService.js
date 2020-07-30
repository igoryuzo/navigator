import history from "../utils/history";
import * as jwt_decode from 'jwt-decode';
import API from '../axios/axiosApi';

const TOKEN_NAME = 'access_token';

const getAuth = (storage) => {
	storage = storage || TOKEN_NAME;
	return (localStorage.getItem(getAuth)) ? true : false;
};

const logout = async (sendRequest) => {
	try {
		localStorage.clear();
		history.push("login");
	} catch (error) {
		console.log("ERROR in logout : ", error);
	}
}

const getToken = (storageName) => {
	return (localStorage.getItem(storageName) !== undefined) ? localStorage.getItem(storageName) : false;
}

const getTokenExpirationDate = (token) => {
	const decoded = jwt_decode(token);
	if (decoded.exp === undefined) return null;

	const date = new Date(0); 
	date.setUTCSeconds(decoded.exp);
	return date;
}

const isTokenExpired = (token) => { 
	if(!token) token = getToken(TOKEN_NAME);
	if(!token) return true;

	const date = getTokenExpirationDate(token);
	// console.log("date : ",date);
	if(date === undefined) return true;
	return !(date.valueOf() > new Date().valueOf());
}

const checkToken = () => {
	let token = getToken(TOKEN_NAME);
	if (!token) { return false; }
	let userData = getToken('user_data');
	if (!userData || userData === undefined) { return false; }
	userData = JSON.parse(userData);
	let date = getTokenExpirationDate(token);
	let current = new Date();

	if (date.valueOf() < current.valueOf()) {
		console.log("expired");
		logout();
		return false;
	}

	if (current.valueOf() >= date.valueOf() - (30 * 60000) ) {
		console.log("Time to refresh token");
		refreshToken(token, userData);
		return false;
	} else {
		// console.log("Token is valid for more than 2 min");
		return true;
	}
};

/**
 * Check if route is accessible by user (Acts as route guard)
 * 
 * @param {*} userType 
 */
const checkRoute = (userType) => {
	try {
		userType = userType || 'normal';
		let token = getToken(TOKEN_NAME);
		if (!token) { return false; }
		let userData = getToken('user_data');
		if (!userData || userData === undefined) { return false; }
		userData = JSON.parse(userData);
		/* let isAdmin = getAuth('chropath_ssid_role');
		if (isAdmin === undefined || isAdmin === null) { return false; }
		if (userType === 'admin' && isAdmin !== '1') {
			return false;
		} else if (userType === 'normal' && isAdmin !== '0') {
			return false;
		} */
		let date = getTokenExpirationDate(token);
		let current = new Date();

		if (date.valueOf() < current.valueOf()) {
			console.log("expired");
			return false;
		}
		if (current.valueOf() >= date.valueOf() - (60 * 60000) ) {
			console.log("Time to refresh token");
			refreshToken(token, userData);
		}
		return true;
	} catch (error) {
		console.log("CHECK TOKEN ERROR : ",error);
		return false;			
	}
};

/**
 * Refresh JWT token
 * 
 * @param {*} token 
 * @param {*} userData 
 */
const refreshToken = async (token, userData) => {
	try {
		const data = { token, userData };
		await API.post('refresh_token', data);
		// console.log("response ==> ",response);
	} catch (error) {
		console.log("ERROR in refreshToken : ", error);
	}
};

export default { getAuth, logout, checkToken, isTokenExpired, checkRoute };