import React from 'react';
import PropTypes from 'prop-types';
import clsx from 'clsx';

import { lighten, makeStyles } from '@material-ui/core/styles';
import Toolbar from '@material-ui/core/Toolbar';
import Typography from '@material-ui/core/Typography';
import IconButton from '@material-ui/core/IconButton';
import Tooltip from '@material-ui/core/Tooltip';
import DeleteIcon from '@material-ui/icons/Delete';
import { SearchInput } from 'components';

const useToolbarStyles = makeStyles(theme => ({
	root: {
	  paddingLeft: theme.spacing(2),
	  paddingRight: theme.spacing(1),
	},
	highlight:
	  theme.palette.type === 'light'
		? {
			color: theme.palette.secondary.main,
			backgroundColor: lighten(theme.palette.secondary.light, 0.85),
		  }
		: {
			color: theme.palette.text.primary,
			backgroundColor: theme.palette.secondary.dark,
		  },
	title: {
	  flex: '1 1 100%',
	},
	searchBar: {
		justifyContent: 'center'
	}
}));
  
const EnhancedTableToolbar = props => {
	const classes = useToolbarStyles();
	const { numSelected, onSearchChange, handleDelete, searchComment } = props;
  
	return (
		<Toolbar
			className={clsx(classes.root, {
				[classes.highlight]: numSelected > 0,
			}, {
				[classes.searchBar]: numSelected === 0,
			})}
		>
			{numSelected > 0 ? (
					<Typography className={classes.title} color="inherit" variant="subtitle1">
						{numSelected} selected
					</Typography>
				) : (
					<SearchInput
						className={classes.searchInput}
						placeholder={searchComment || 'Search records'}
						onChange={onSearchChange}
					/>
				)}
		
				{numSelected > 0 ? (
					<Tooltip title="Delete">
						<IconButton aria-label="delete" onClick={handleDelete}>
							<DeleteIcon />
						</IconButton>
					</Tooltip>
				) : null }
		</Toolbar>
	);
};
  
EnhancedTableToolbar.propTypes = {
	numSelected		: PropTypes.number.isRequired,
	onSearchChange	: PropTypes.func.isRequired,
	handleDelete	: PropTypes.func.isRequired,
};

export default EnhancedTableToolbar;