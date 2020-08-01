import React from 'react';
import { Route } from 'react-router-dom';
import PropTypes from 'prop-types';
import { Main as MainLayout } from '../layouts';

const LayoutRoute = ({ component: Component, userType, ...rest }) => {
    return (
        <Route {...rest} 
            render={props => <MainLayout><Component {...props} /></MainLayout>}
        />
    );
};

LayoutRoute.propTypes = {
    component: PropTypes.any.isRequired,
    path: PropTypes.string,
    exact: PropTypes.bool
};

export default LayoutRoute;