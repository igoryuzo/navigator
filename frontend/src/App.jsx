import React from 'react';
import { ThemeProvider } from '@material-ui/core/styles';
import validate from 'validate.js';

import theme from './theme';
import 'react-perfect-scrollbar/dist/css/styles.css';
import './assets/scss/index.scss';
import validators from './common/validators';
import Routes from './Routes';

validate.validators = {
	...validate.validators,
	...validators
};

export default function App(props) {

	return (
		<ThemeProvider theme={theme}>
			<Routes />
		</ThemeProvider>
	);
}
	