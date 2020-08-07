import React from 'react';
// import { Link as RouterLink } from 'react-router-dom';
import clsx from 'clsx';
import PropTypes from 'prop-types';
import { makeStyles } from '@material-ui/core/styles';
import AppBar  from '@material-ui/core/AppBar';
import Toolbar  from '@material-ui/core/Toolbar';
import Typography  from '@material-ui/core/Typography';
// import Badge  from '@material-ui/core/Badge';
// import Hidden  from '@material-ui/core/Hidden';
// import IconButton  from '@material-ui/core/IconButton';
// import Tooltip from '@material-ui/core/Tooltip';

// import MenuIcon from '@material-ui/icons/Menu';
// import NotificationsIcon from '@material-ui/icons/NotificationsOutlined';
// import InputIcon from '@material-ui/icons/Input';

// import AuthService from '../../../../services/authService';

const useStyles = makeStyles(theme => ({
	flexGrow: {
		flexGrow: 1
	},
	logo: {
		height: 35,
	},
	signOutButton: {
		marginLeft: theme.spacing(1)
	},
	title: {
		flexGrow: 1
	}
}));

const Topbar = props => {
	// const { className, onSidebarOpen, ...rest } = props;
	const { className, ...rest } = props;

	const classes = useStyles();

	/* const logoutUser = () => {
		AuthService.logout();
	}; */

	return (
		<AppBar
			{...rest}
			className={clsx(classes.root, className)}
		>
			<Toolbar>
				{/* <RouterLink to="/">
					<img
						alt="Logo"
						src="/images/logos/titlebar-logo.png"
						className={classes.logo}
					/>
				</RouterLink> */}
				<Typography color="inherit" variant="h3" className={classes.title}>
					ALPHATHIRTY
				</Typography>
				<div className={classes.flexGrow} />
				{/* <Hidden mdDown> */}
					{/* <Tooltip title="Logout">
						<IconButton
							className={classes.signOutButton}
							color="inherit"
							onClick={logoutUser}
						>
							<InputIcon />
						</IconButton>
					</Tooltip> */}
				{/* </Hidden> */}
				{/* <Hidden lgUp>
					<IconButton
						color="inherit"
						onClick={onSidebarOpen}
					>
						<MenuIcon />
					</IconButton>
				</Hidden> */}
			</Toolbar>
		</AppBar>
	);
};

Topbar.propTypes = {
	className: PropTypes.string,
	// onSidebarOpen: PropTypes.func
};

export default Topbar;