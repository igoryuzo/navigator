import React from 'react';
import { Router, Switch, Redirect, Route } from 'react-router-dom';

import history from './utils/history';
import UnauthenticatedRoute from './components/UnauthenticatedRoute';
import AuthenticatedRoute from './components/AuthenticatedRoute';

import {
	Login,
	Evaluation,
	Scrapper,
	NotFound as NotFoundView
} from './screens';

const Routes = () => {
	let path = '/investments';
	return (
		<Router history={history}>
			<Switch>
				<Redirect exact from="/" to={path} />
				<UnauthenticatedRoute exact path="/login" component={Login} />
				<AuthenticatedRoute exact path="/investments" component={Evaluation} />
				<AuthenticatedRoute exact path="/scrapper" component={Scrapper} />
				<Route path="/not-found" component={NotFoundView} />
				<Redirect to="/not-found" />
			</Switch>
		</Router>
	);
};

export default Routes;