import React from 'react';
import { Route, Redirect } from 'react-router-dom';
import AuthService from '../services/authService';
import PropTypes from 'prop-types';
import { Main as MainLayout } from '../layouts';

const AuthenticatedRoute = ({ component: Component, userType, ...rest }) => {
    return (
        <Route {...rest} 
            render={props => AuthService.checkRoute(userType) ? <MainLayout><Component {...props} /></MainLayout> : <Redirect to={{ pathname: "/login" }} />}
        />
    );
};

AuthenticatedRoute.propTypes = {
    component: PropTypes.any.isRequired,
    path: PropTypes.string,
    exact: PropTypes.bool
};

export default AuthenticatedRoute;