import React from 'react';
import { Route, Redirect } from 'react-router-dom';
import AuthService from '../services/authService';
import PropTypes from 'prop-types';

const AuthenticatedMinimalRoute = ({ component: Component, userType, ...rest }) => {
    return (
        <Route {...rest} 
            render={props => AuthService.checkRoute(userType) ? <Component {...props} /> : <Redirect to={{ pathname: "/login" }} />}
        />
    );
};

AuthenticatedMinimalRoute.propTypes = {
    component: PropTypes.any.isRequired,
    path: PropTypes.string,
    exact: PropTypes.bool
};

export default AuthenticatedMinimalRoute;