import React from 'react';
// import { Link as RouterLink } from 'react-router-dom';
import clsx from 'clsx';
import PropTypes from 'prop-types';
import { makeStyles } from '@material-ui/core/styles';
import { Avatar, Typography } from '@material-ui/core';

// import { SERVER_PATH, PROFILE_IMAGE_PATH } from '../../../../../../config';
// import { handleProfileChange } from '../../../../../../services/handlerService';
// import API from '../../../../../../axios/axiosApi';

const useStyles = makeStyles(theme => ({
	root: {
		display: 'flex',
		flexDirection: 'column',
		alignItems: 'center',
		minHeight: 'fit-content'
	},
	avatar: {
		width: 60,
		height: 60
	},
	name: {
		marginTop: theme.spacing(1)
	}
}));

const Profile = props => {
	const { className, ...rest } = props;
	const classes = useStyles();
	const userData = (localStorage.getItem('user_data') !== null && localStorage.getItem('user_data') !== undefined) ? JSON.parse(localStorage.getItem('user_data')) : {};

	/* useEffect(() => {
		handleProfileChange.receiveData().subscribe(data => {
			if (data) {
				// if (data.path) { setImageSource(data.path); }
				if (data.name)  {
					setUserData(userData => ({ ...userData, name: data.name }));
				}
			}
		});
	}, [userData]); */
	
	return (
		<div {...rest} className={clsx(classes.root, className)}>
			<Avatar
				className={classes.avatar}
				// component={RouterLink}
				// to="/profile"
			>
				{(userData && userData.email && userData.email[0]) ? userData.email[0].toUpperCase() : 'U'}
			</Avatar>
			<Typography className={classes.name} variant="h5">
				{userData.email}
			</Typography>
			{/* <Typography variant="body2">{userData.email}</Typography> */}
		</div>
	);
};

Profile.propTypes = {
	className: PropTypes.string
};

export default Profile;
