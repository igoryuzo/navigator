import React, { useState, useEffect } from 'react';
import clsx from 'clsx';

import Table from '@material-ui/core/Table';
import TableBody from '@material-ui/core/TableBody';
import TableCell from '@material-ui/core/TableCell';
import TableContainer from '@material-ui/core/TableContainer';
import TableHead from '@material-ui/core/TableHead';
import TableRow from '@material-ui/core/TableRow';
import Paper from '@material-ui/core/Paper';
import LinearProgress from '@material-ui/core/LinearProgress';
import Typography from '@material-ui/core/Typography';
import Snackbar from '@material-ui/core/Snackbar';
import Button from '@material-ui/core/Button';

import BuildIcon from '@material-ui/icons/Build';

import useStyles from './ScrapperStyle';
import useCommonStyles from '../../common/style';
import API from '../../axios/axiosApi';
import { formatDate, formatUnderscore } from '../../utils/formatter';
// import { formatDate, formatCurrency, formatUnixDate, formatUnderscore } from '../../utils/formatter';


const Scrapper = (props) => {
	const classes = useStyles();
	const commonClasses = useCommonStyles();
	const [loading, setLoading] = useState(false);
	const [scriptBatches, setScriptBatches] = useState([]);
	const [snack, setSnack] = useState({ open: false, message: '' });
	const [message, setMessage] = useState();
	const [scriptStarted, setScriptStarted] = useState(false);
	const [refresh, setRefresh] = useState(false);

	useEffect(() => {
		const fetchScriptBatches = async () => {
			setLoading(true);
			try {
				const response = await API.get('batches');
				if (response.data.success) {
					// console.log("videos data ==> ",response.data.data);
					setScriptBatches(response.data.data.batches);
					// setTotalRecords(response.data.data.count);
				} else {
					console.log("response ==> ",response.data);
				}
				setLoading(false);
			} catch (error) {
				console.log("ERROR in fetchScriptBatches : ", error);
				setLoading(false);
			}
		};
		fetchScriptBatches();
	}, [refresh]);

	const startScrapping = async () => {
		try {
			setLoading(true);
			const response = await API.get('scrap');
			// console.log("response ==> ",response);
			setLoading(false);
			if (response.data.success) {
				setMessage(response.data.message);
				handleSnackToogle(response.data.message);
				setRefresh(refresh => !refresh);
				setScriptStarted(true);
			} else {
				let msg = (response.data && response.data.message) ? response.data.message : 'Something went wrong.';
				handleSnackToogle(msg);
			}
		} catch (error) {
			setLoading(false);
			console.log("ERROR startScrapping : ", error);
			let msg = (error && error.response && error.response.data.message) ? error.response.data.message : 'Something went wrong.';
			handleSnackToogle(msg);
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
				<div className={classes.scrapContainer}>
					<Button color="primary" variant="contained" disabled={loading || scriptStarted} onClick={startScrapping}>Start Scrapping</Button>
					{message ? (
						<div className={classes.scrapMessage}>
							<Typography variant="h4">{message}</Typography>
							<Button color="primary" onClick={gotoEvaluation} className={classes.gotoBtn}>Go to evaluated results</Button>
						</div>
					) : null}
				</div>
				
				<Paper className={clsx(classes.paper, commonClasses.paperContainer)}>
					{ loading ? <LinearProgress className={commonClasses.progressBar} /> : null }
					<TableContainer>
						<Table>
							<TableHead>
								<TableRow>
									<TableCell>Batch ID</TableCell>
									<TableCell>Started At</TableCell>
									<TableCell>Completed At</TableCell>
									<TableCell>Status</TableCell>
									<TableCell>Message</TableCell>
								</TableRow>
							</TableHead>
							<TableBody>
							{ scriptBatches.length === 0 ? (
								<TableRow>
									<TableCell colSpan={4}>No subscription found</TableCell>
								</TableRow>
							) : null}
							
							{ scriptBatches.map((batch, index) => (
								<TableRow hover key={index}>
									<TableCell>{'#' + batch.id}</TableCell>
									<TableCell>{batch.created_at ? formatDate(batch.created_at) : '-'}</TableCell>
									<TableCell>{batch.completed_at ? formatDate(batch.completed_at) : "-"}</TableCell>
									<TableCell>{formatUnderscore(batch.status)}</TableCell>
									<TableCell>{batch.message ? batch.message : "-"}</TableCell>
								</TableRow>
							)) }
							</TableBody>
						</Table>
					</TableContainer>
				</Paper>
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