import React, { useState, useEffect } from 'react';
// import clsx from 'clsx';

// import Table from '@material-ui/core/Table';
// import TableBody from '@material-ui/core/TableBody';
// import TableCell from '@material-ui/core/TableCell';
// import TableContainer from '@material-ui/core/TableContainer';
// import TableHead from '@material-ui/core/TableHead';
// import TableRow from '@material-ui/core/TableRow';
// import Paper from '@material-ui/core/Paper';
// import LinearProgress from '@material-ui/core/LinearProgress';
import Typography from '@material-ui/core/Typography';
import Snackbar from '@material-ui/core/Snackbar';
import Button from '@material-ui/core/Button';

import BuildIcon from '@material-ui/icons/Build';

import useStyles from './ScrapperStyle';
// import useCommonStyles from '../../common/style';
import API from '../../axios/axiosApi';
// import { formatDate, formatCurrency, formatUnixDate, formatUnderscore } from '../../utils/formatter';


const Scrapper = (props) => {
	const classes = useStyles();
	// const commonClasses = useCommonStyles();
	const [loading, setLoading] = useState(false);
	// const [subscription, setSubscription] = useState([]);
	const [snack, setSnack] = useState({ open: false, message: '' });
	const [message, setMessage] = useState('');

	useEffect(() => {
		/* const fetchEvaluatedData = async () => {
			setLoading(true);
			try {
				const response = await API.get('evaluate');
				if (response.data.success) {
					// console.log("videos data ==> ",response.data.data);
					setRecords(response.data.data.rows);
					// setTotalRecords(response.data.data.count);
				} else {
					console.log("response ==> ",response.data);
				}
				setLoading(false);
			} catch (error) {
				console.log("ERROR in fetchEvaluatedData : ", error);
				setLoading(false);
			}
		};
		fetchEvaluatedData(); */
	}, []);

	const startScrapping = async () => {
		try {
			setLoading(true);
			const response = await API.get('scrap');
			// console.log("response ==> ",response);
			setLoading(false);
			if (response.data.success) {
				setMessage(response.data.message);
				handleSnackToogle(response.data.message);
			}
		} catch (error) {
			setLoading(false);
			console.log("ERROR startScrapping : ", error);
		}
	};

	const gotoEvaluation = () => {
		props.history.push('/evaluation');

	};


	const handleSnackToogle = (message) => {
		setSnack(snack => ({ open: !snack.open, message: message || '' }));
	};

	// const emptyRows = pageSize - records.length;

	return (
		<div className={classes.root}>
			<div className={classes.pageHeader} >
				<div className={classes.row}>
					<div className={classes.pageTitle}>
						<BuildIcon fontSize="large" className={classes.titleIcon} />
						<Typography variant="h4">Scrapper</Typography>
					</div>
					{/* <Button color="primary" variant="contained" onClick={openAddUser}>Add User</Button> */}
				</div>
			</div>
			<div className={classes.content}>
				<Button color="primary" variant="contained" disabled={loading} onClick={startScrapping}>Start Scrapping</Button>
				{message ? (
					<div className={classes.scrapMessage}>
						<Typography variant="h4">{message}</Typography>
						<Button color="primary" onClick={gotoEvaluation} className={classes.gotoBtn}>Go to evaluated results</Button>
					</div>
				) : null}
				
				{/* <Paper className={clsx(classes.paper, commonClasses.paperContainer)}>
					{ loading ? <LinearProgress className={commonClasses.progressBar} /> : null }
					<TableContainer>
						<Table>
							<TableHead>
								<TableRow>
									<TableCell>Plan</TableCell>
									<TableCell>Starting Date</TableCell>
									<TableCell>Next Billing Date</TableCell>
									<TableCell>Status</TableCell>
								</TableRow>
							</TableHead>
							<TableBody>
							{ subscription.length === 0 ? (
								<TableRow>
									<TableCell colSpan={4}>No subscription found</TableCell>
								</TableRow>
							) : null}
							
							{ subscription.map((row, index) => (
								<TableRow hover>
									<TableCell>{formatUnderscore(subscription.stripe_plan_name)}</TableCell>
									<TableCell>{formatUnixDate(subscription.created_at)}</TableCell>
									<TableCell>{subscription.next_billable_date ? formatUnixDate(subscription.next_billable_date) : '-'}</TableCell>
									<TableCell>{subscription.subscription_status ? formatUnderscore(subscription.subscription_status) : "-"}</TableCell>
								</TableRow>
							)) }
							</TableBody>
						</Table>
					</TableContainer>
				</Paper> */}
			</div>

			<Snackbar
				anchorOrigin={{ vertical: 'top', horizontal: 'center' }}
				open={snack.open}
				onClose={() => handleSnackToogle()}
				message={snack.message}
				autoHideDuration={2000}
			/>
		</div>
	);
};

export default Scrapper;