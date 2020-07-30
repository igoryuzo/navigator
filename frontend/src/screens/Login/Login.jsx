import React, { useState, useEffect } from 'react';
import validate from 'validate.js';
import clsx from 'clsx';

import Avatar from '@material-ui/core/Avatar';
import Button from '@material-ui/core/Button';
import Grid from '@material-ui/core/Grid';
import Typography from '@material-ui/core/Typography';
import Container from '@material-ui/core/Container';
import Card from '@material-ui/core/Card';
import CardContent from '@material-ui/core/CardContent';
import IconButton from '@material-ui/core/IconButton';
import InputAdornment from '@material-ui/core/InputAdornment';
import TextField from '@material-ui/core/TextField';
// import Backdrop from '@material-ui/core/Backdrop';
// import CircularProgress from '@material-ui/core/CircularProgress';
import Alert from '@material-ui/lab/Alert';

import LockOutlinedIcon from '@material-ui/icons/LockOutlined';
import VisibilityOff from '@material-ui/icons/VisibilityOff';
import Visibility from '@material-ui/icons/Visibility';


import useStyles from './LoginStyle';
import API from '../../axios/axiosApi'

const schema = {
	email: {
		presence: { allowEmpty: false, message: 'is required' },
		email: true,
		length: {
			maximum: 128
		}
	},
	password: {
		presence: { allowEmpty: false, message: 'is required' },
			/* length: {
				maximum: 128,
				minimum: 8
			} */
	}
};


const Login = props => {
	const classes = useStyles();
	const { history } = props;

	const [formState, setFormState] = useState({
		isValid: false,
		values: {},
		touched: {},
		errors: {}
	});
	const [ errorMessage, setErrorMessage ] = useState('');
	const [ loading, setLoading ] = useState(false);

	useEffect(() => {
		const errors = validate(formState.values, schema);

		setFormState(formState => ({
			...formState,
			isValid: errors ? false : true,
			errors: errors || {}
		}));
	}, [formState.values]);

	/**
	 * Handle field change
	 * 
	 * @param {*} event 
	 */
	const handleChange = event => {
		event.persist();

		setFormState(formState => ({
		...formState,
		values: {
			...formState.values,
			[event.target.name]:
			event.target.type === 'checkbox'
				? event.target.checked
				: event.target.value
		},
		touched: {
			...formState.touched,
			[event.target.name]: true
		}
		}));
	};

	/**
	 * Handle Login request
	 * 
	 * @param {*} event 
	 */
	const handleLogin = async (event) => {
		event.preventDefault();
		setErrorMessage('');
		setLoading(true);
		try {			
			const response = await API.post('login', formState.values);
			setLoading(false);
			if (response.data.success) {
				// const redirectUrl = (response.data.data && response.data.data.is_admin === '1') ? '/users' : '/dashboard';
				history.push('/evaluation');
			} else {
				const errorMsg = response.data.message || 'Invalid Credentials';
				setErrorMessage(errorMsg);
			}
		} catch (error) {
			// console.log("ERROR in handleLogin : ", error);
			const msg = (error.response && error.response.data.message) ||'Incorrect Credentials';			
			setErrorMessage(msg);
			setLoading(false);
		}
	};

	const hasError = field =>
		formState.touched[field] && formState.errors[field] ? true : false;

	/**
	 * Toogle password visiblity
	 */
	const handlePasswordVisibility = () => {
		setFormState({ ...formState, values: { ...formState.values,  showPassword: !formState.values.showPassword } });
	};

  	return (
		<Grid container component="main" className={clsx(classes.root, 'loginouter')}>
			<Container component="main" maxWidth="sm">
				<Card className={classes.card} component="main" elevation={20}>
					<CardContent className={classes.paper}>
						<Avatar className={classes.avatar}>
							<LockOutlinedIcon />
						</Avatar>
						<Typography variant="h2">
							Welcome to Navigator
						</Typography>
						<Typography variant="h2" color="textSecondary">
							Sign In
						</Typography>
						{errorMessage ? (
							<Alert severity="error">{ errorMessage }</Alert>							
						) : null}
						<form className={classes.form} onSubmit={handleLogin}>
							<TextField
								className={classes.textField}
								error={hasError('email')}
								fullWidth
								helperText={
									hasError('email') ? formState.errors.email[0] : null
								}
								label="Email address"
								name="email"
								onChange={handleChange}
								type="text"
								value={formState.values.email || ''}
								variant="outlined"
								required
							/>
							<TextField
								className={classes.textField}
								error={hasError('password')}
								fullWidth
								helperText={
									hasError('password') ? formState.errors.password[0] : null
								}
								label="Password"
								name="password"
								onChange={handleChange}
								type={formState.values.showPassword ? 'text' : 'password'}
								value={formState.values.password || ''}
								variant="outlined"
								required
								InputProps={{
									endAdornment: <InputAdornment position="end"><IconButton
										aria-label="toggle password visibility"
										edge="end"
										onClick={handlePasswordVisibility}
									>
										{formState.values.showPassword ? <Visibility /> : <VisibilityOff />}
									</IconButton></InputAdornment>,
								}}
							/>
							<Button
								className={classes.signInButton}
								color="primary"
								disabled={!formState.isValid || loading}
								fullWidth
								size="large"
								type="submit"
								variant="contained"
							>
								Sign In
							</Button>
							{/* <Grid container>
								<Grid item xs>
									<Link className={classes.cursorPointer} variant="body2" onClick={() => history.push('/forgot-pasword')}>
										Forgot password?
									</Link>
								</Grid>
							</Grid> */}
						</form>
					</CardContent>
				</Card>
			</Container>
			{/* <Backdrop className={classes.backdrop} open={loading}>
				<CircularProgress color="inherit" />
			</Backdrop> */}
		</Grid>
  	);
};

export default Login;