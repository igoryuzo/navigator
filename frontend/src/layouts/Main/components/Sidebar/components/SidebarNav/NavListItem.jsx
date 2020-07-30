/* eslint-disable react/no-multi-comp */
/* eslint-disable react/display-name */
import React, { forwardRef } from 'react';
import { NavLink as RouterLink } from 'react-router-dom';
import clsx from 'clsx';
import PropTypes from 'prop-types';
import { makeStyles } from '@material-ui/core/styles';
import List from '@material-ui/core/List';
import ListItem from '@material-ui/core/ListItem';
import Button from '@material-ui/core/Button';
import Collapse from '@material-ui/core/Collapse';

import ExpandLess from '@material-ui/icons/ExpandLess';
import ExpandMore from '@material-ui/icons/ExpandMore';

const useStyles = makeStyles(theme => ({
	item: {
		display: 'flex',
		paddingTop: 0,
		paddingBottom: 0
	},
	button: {
		color: theme.palette.colors.blueGrey[800],
		padding: '10px 8px',
		justifyContent: 'flex-start',
		textTransform: 'none',
		letterSpacing: 0,
		width: '100%',
        fontWeight: theme.typography.fontWeightMedium,
        flexDirection: 'row',
	},
	icon: {
		color: theme.palette.icon,
		width: 24,
		height: 24,
		display: 'flex',
		alignItems: 'center',
		marginRight: theme.spacing(1)
	},
	active: {
		color: theme.palette.primary.main,
		fontWeight: theme.typography.fontWeightMedium,
		'& $icon': {
		color: theme.palette.primary.main
		}
	},
	nested: {
		paddingLeft: theme.spacing(4),
    },
    nestedSubItems: {
        padding: 1
    },
    spacer: {
		flexGrow: 1
	},
}));

const CustomRouterLink = forwardRef((props, ref) => (
	<div
		ref={ref}
		style={{ flexGrow: 1 }}
	>
		<RouterLink {...props} />
	</div>
));

const NavListItem = props => {
	const { page } = props;

	const classes = useStyles();
	const [open, setOpen] = React.useState(false);
	const handleClick = () => {
		setOpen(!open);
    };
    
    if (page.children) {
        return (
            <div>
                <ListItem className={classes.item} disableGutters button>
                    <Button className={classes.button} onClick={handleClick}>
                        <div className={classes.icon}>{page.icon}</div>
                        {page.title}
                        <span className={classes.spacer} />
                        <div className={classes.icon}>{open ? <ExpandLess /> : <ExpandMore />}</div>
                    </Button>
                </ListItem>
                <Collapse in={open} timeout="auto" unmountOnExit>
                    <List component="div" disablePadding>
                    {
                        page.children.map(childNav => (
                            <ListItem
                                key={childNav.title}
                                disableGutters
                                className={classes.nestedSubItems}
                            >
                                <Button
                                    activeClassName={classes.active}
                                    className={clsx(classes.button, classes.nested)}
                                    component={CustomRouterLink}
                                    to={childNav.href}
                                >
                                    {childNav.title}
                                </Button>
                            </ListItem>
                        ))
                    }
                    </List>
                </Collapse>
            </div>
        );
    } else {
        return (
            <ListItem
                className={classes.item}
                disableGutters
            >
                <Button
                    activeClassName={classes.active}
                    className={classes.button}
                    component={CustomRouterLink}
                    to={page.href}
                >
                    <div className={classes.icon}>{page.icon}</div>
                    {page.title}
                </Button>
            </ListItem>
        );

    }
};

NavListItem.propTypes = {
	page: PropTypes.object.isRequired
};

export default NavListItem;
