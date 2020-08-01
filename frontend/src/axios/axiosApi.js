import axios from 'axios';
import { BASE_API_PATH } from '../config';
import authService from '../services/authService';


const API = axios.create({
	baseURL: BASE_API_PATH,
	headers: {'Content-Type':  'application/json'} // application/x-www-form-urlencoded
});


API.interceptors.request.use((config) => {
	// const unrestrictedUrls = ['login', 'refresh_token'];
	// if (!unrestrictedUrls.includes(config.url)) {
	// 	authService.checkToken();
	// }
	// config.headers['Authorization'] = `Bearer ${localStorage.getItem("access_token")}`;
	return config;
}, (error) => {
	// Do something with request error
	return Promise.reject(error);
});


API.interceptors.response.use((response) => {
	// Any status code that lie within the range of 2xx cause this function to trigger    
	const authUrls = ["login" , "refresh_token"];
	if (response.data.success && response.data.token !== undefined && response.data.token !== '' && authUrls.includes(response.config.url)) {
		// console.log("!!!! token ==> ",response.data.token);
		localStorage.setItem("access_token", response.data.token);
		if (response.config.url !== 'refresh_token') {
			localStorage.setItem("user_data", JSON.stringify(response.data.data.userData));
		}
	}
	if (response.data.success === false && response.data.status !== undefined && response.data.status === 'logged-out') {
		authService.logout();
	}
	return response;

}, (error) => {
	// Any status codes that falls outside the range of 2xx cause this function to trigger
	console.log("API call error :", error.response);
	if (error.response && error.response.data.success === false && error.response.data.status !== undefined && error.response.data.status === 'logged-out') {
		authService.logout(false);
	}
	return Promise.reject(error);
});

export default API;