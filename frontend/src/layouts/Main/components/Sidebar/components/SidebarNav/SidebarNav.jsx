/* eslint-disable react/no-multi-comp */
/* eslint-disable react/display-name */
import React from 'react';
import clsx from 'clsx';
import PropTypes from 'prop-types';
import { makeStyles } from '@material-ui/core/styles';
import List from '@material-ui/core/List';

import NavListItem from './NavListItem';

const useStyles = makeStyles(theme => ({
	root: {},
	button: {
		color: theme.palette.colors.blueGrey[800],
		padding: '10px 8px',
		justifyContent: 'flex-start',
		textTransform: 'none',
		letterSpacing: 0,
		width: '100%',
		fontWeight: theme.typography.fontWeightMedium
	},
}));

const SidebarNav = props => {
	const { pages, className, ...rest } = props;

	const classes = useStyles();

	return (
		<List
			{...rest}
			className={clsx(classes.root, className)}
		>
			{pages.map(page => (
				<NavListItem key={page.title} page={page}/>
			))}
		</List>
  	);
};

SidebarNav.propTypes = {
	className: PropTypes.string,
	pages: PropTypes.array.isRequired
};

export default SidebarNav;
