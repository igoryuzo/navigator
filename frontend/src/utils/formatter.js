import * as moment from 'moment';

const formatDate = (date, format) => {
	if (!date || date === '') { return date };
	format = format || 'YYYY-MM-DD hh:mm:ss A';
	return moment(date).format(format);
};

const formatUnderscore = (text) => {
	if (!text || text === '') { return text };
	let splitText = text.split('_');
	return splitText.map((word) => word.charAt(0).toUpperCase() +  word.slice(1)).join(' ');
};

const formatCurrency = (value, deciamalPlaces) => {
	if (!value || value === '') { return value };
	deciamalPlaces = deciamalPlaces || 2;
	return value.toFixed(deciamalPlaces);
};

const formatUnixDate = (date, format) => {
	if (!date || date === '') { return date };
	format = format || 'YYYY-MM-DD hh:mm:ss A';
	return moment.unix(date).format(format);
};


export { formatDate, formatUnderscore, formatCurrency, formatUnixDate };