import React, { useState, useEffect } from 'react';
// import clsx from 'clsx';

// import Table from '@material-ui/core/Table';
// import TableBody from '@material-ui/core/TableBody';
// import TableCell from '@material-ui/core/TableCell';
// import TableContainer from '@material-ui/core/TableContainer';
// import TableRow from '@material-ui/core/TableRow';
// import Paper from '@material-ui/core/Paper';
// import LinearProgress from '@material-ui/core/LinearProgress';
// import Toolbar from '@material-ui/core/Toolbar';
import Typography from '@material-ui/core/Typography';
import Snackbar from '@material-ui/core/Snackbar';
// import Button from '@material-ui/core/Button';
import Avatar from '@material-ui/core/Avatar';

// import PageviewIcon from '@material-ui/icons/Pageview';

import useStyles from './EvaluationStyle';
// import useCommonStyles from '../../common/style';
import useDebounce from '../../hooks/useDebounce';
// import EnhancedTableToolbar from '../../components/EnhancedTableToolbar';
// import EnhancedTableHead from '../../components/EnhancedTableHead';
import API from '../../axios/axiosApi';
import { formatDate, formatCurrency } from '../../utils/formatter';

import './Evaluation.css';

/* const headCells = [
	{ key: 'id', numeric: true, disablePadding: false, label: 'ID', sortable: false },
	{ key: 'stock_symbol', numeric: false, disablePadding: false, label: 'Stock Symbol', sortable: false },
	{ key: 'stock_name', numeric: false, disablePadding: false, label: 'Stock Name', sortable: false },
	{ key: 'fair_value', numeric: true, disablePadding: false, label: 'Fair Value', sortable: false },
	{ key: 'current_value', numeric: true, disablePadding: false, label: 'Current Value', sortable: false },
	{ key: 'percentage', numeric: true, disablePadding: false, label: 'Percentage', sortable: true },
	{ key: 'created_at', numeric: false, disablePadding: false, label: 'Created At', sortable: false },
]; */


const Evaluation = (props) => {
	const classes = useStyles();
	// const commonClasses = useCommonStyles();
	// const [loading, setLoading] = useState(false);
	// const [search, setSearch] = useState('');
	const [search] = useState('');
	const [records, setRecords] = useState([]);
	const [latestBatch, setLatestBatch] = useState({});
	// const [totalRecords, setTotalRecords] = useState(0);
	const debouncedSearch = useDebounce(search, 500);

	const [order, setOrder] = useState('desc');
	const [orderBy, setOrderBy] = useState('percentage');
	// const [selected, setSelected] = useState([]);
	// const [pageSize, setPageSize] = useState(10);
	// const [page, setPage] = useState(0);
	const pageSize = 10, page = 0;
	const [snack, setSnack] = useState({ open: false, message: '' });
	// const [refreshRecords, setRefreshRecords] = useState(false);
	

	useEffect(() => {
		const fetchEvaluatedData = async () => {
			// setLoading(true);
			try {
				let postData = {
					order,
					orderBy,
					// pageOffset: page * pageSize,
					// pageSize,
					// searchText: debouncedSearch,
				};
				const response = await API.post('evaluate', postData);
				if (response.data.success) {
					// console.log("videos data ==> ",response.data.data);
					setRecords(response.data.data.rows);
					setLatestBatch(response.data.data.latest);
					// setTotalRecords(response.data.data.count);
				} else {
					console.log("response ==> ",response.data);
				}
				// setLoading(false);
			} catch (error) {
				console.log("ERROR in fetchEvaluatedData : ", error);
				// setLoading(false);
			}
		};
		fetchEvaluatedData();
	}, [debouncedSearch, page, pageSize, order, orderBy]);

	/**
	 * Handle on search change
	 * 
	 * @param {*} event 
	 */
	/* const handleSearch = (event) => {
		setSearch(event.target.value)
	}; */

	/**
	 * Handle sorting change
	 * 
	 * @param {*} event 
	 * @param {*} property 
	 */
	const handleRequestSort = (property) => {
		const isAsc = orderBy === property && order === 'asc';
		setOrder(isAsc ? 'desc' : 'asc');
		setOrderBy(property);
	};

	/**
	 * Toogle select all
	 * 
	 * @param {*} event 
	 */
	/* const handleSelectAll = event => {
		let newSelected = [];
		if (event.target.checked) {
			newSelected = records.map((item, index) => index);
		}
		setSelected(newSelected);
	}; */

	/**
	 * Toogle checkbox selection
	 * 
	 * @param {*} event 
	 * @param {*} index 
	 */
	/* const handleCheck = (event, index) => {
		const selectedIndex = selected.indexOf(index);
		let newSelected = [ ...selected];

		if (event.target.checked && selectedIndex === -1) {
			newSelected = [ ...newSelected, index ];

		} else if (selectedIndex > -1) {
			newSelected.splice(selectedIndex, 1);
		}
		// console.log("newSelected : ",newSelected);
		setSelected(newSelected);
	};
 */
	/**
	 * Handle page change and refeacth data
	 * 
	 * @param {*} event 
	 * @param {*} newPage 
	 */
	/* const handleChangePage = (event, newPage) => {
		setPage(newPage);
	}; */

	/**
	 * On change page size
	 * 
	 * @param {*} event 
	 */
	/* const handleChangeRowsPerPage = event => {
		setPageSize(parseInt(event.target.value, 10));
		setPage(0);
	}; */


	/* const openAddUser = () => {
		props.history.push('/users/add');
	}; */

	/* const openDetailPage = (index) => {
		if (records[index]) {
			props.history.push('/users/' + records[index].id);
		}
	} */

	const handleSnackToogle = (message) => {
		setSnack(snack => ({ open: !snack.open, message: message || '' }));
	};

	// const emptyRows = pageSize - records.length;

	return (
		<div className={classes.root}>
			<div className="container">
				<div className="row mt-5 text-center">
					<div className="col">
						<h3>INVESTMENTS</h3>
					</div>
				</div>
			</div>

			
			{/* DESKTOP VIEW */}
			<div className="container d-none d-md-block">
				<Typography color="textSecondary" variant="subtitle2">
					Last synced at: { latestBatch.completed_at ? formatDate(latestBatch.completed_at) : '....' }
				</Typography>
				<div className="row mt-5 mb-3 header-row mx-0 text-center">
					<div className="col py-2">
						<i className="fa fa-search"></i>
					</div>
					<div className="col py-2">
						<p className="m-0">Ticker</p>
					</div>
					<div className="col py-2">
						<p className="m-0">Company name</p>
					</div>
					<div className="col py-2">
						<p className="m-0">Current price</p>
					</div>
					<div className="col py-2">
						<p className="m-0">Target price</p>
					</div>
					<div className="col py-2 pointer" onClick={() => handleRequestSort('percentage')}>
						<p className="m-0">Undervalued by % &nbsp;
						{order === 'asc' ? (
							<i className="fa fa-sort-amount-asc"></i>
						) : (
							<i className="fa fa-sort-amount-desc"></i>
						)}
						</p>
					</div>
				</div>
				{ records.length === 0 ? (
					<div className="row detail-row mt-3 text-center">
						<div className="col">
							<div className="card">
								<div className="row">
									<div className="col p-2">
										<p className="mb-0 mt-2"><strong>No records found</strong></p>
									</div>
								</div>
							</div>
						</div>
					</div>
				): null }
				{ records.map((row, index) => (
					<div className="row detail-row text-center" key={index}>
						<div className="col">
							<div className="card">
								<div className="row card-row">
									<div className="col p-2 cell-logo">
										<Avatar variant="square" className="logo" src={row.logo} alt={row.stock_symbol} />
									</div>
									<div className="col p-2">
										<Typography variant="h5">{row.stock_symbol}</Typography>
										{/* <p className="mb-0 mt-2"><strong className="fw-600">{row.stock_symbol}</strong></p> */}
									</div>
									<div className="col p-2">
										<Typography color="textSecondary"><small>{row.stock_name ? row.stock_name : '-'}</small></Typography>
										{/* <p className="mb-0 mt-2"><small>Apple Inc.</small></p> */}
									</div>
									<div className="col p-2">
										<Typography variant="h5">${formatCurrency(row.current_value)}</Typography>
										{/* <p className="mb-0 mt-2"><strong className="fw-600">$380</strong></p> */}
									</div>
									<div className="col p-2">
										<Typography variant="h5">${formatCurrency(row.fair_value)}</Typography>
										{/* <p className="mb-0 mt-2"><strong>$500</strong></p> */}
									</div>
									<div className="col p-2">
										<span className="valuebox">
											{row.percentage ? formatCurrency(row.percentage) + '%' : '-' }
										</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				)) }
			</div>
			{/* DESKTOP VIEW */}

			{/* MOBILE VIEW */}
			<div className="container d-sm-block d-md-none">
				<Typography color="textSecondary" variant="subtitle2">
					Last synced at: { latestBatch.completed_at ? formatDate(latestBatch.completed_at) : '....' }
				</Typography>
				<div className="row mt-3 mx-0 sorter">
					<div className="col p-2 pointer" onClick={() => handleRequestSort('percentage')}>						
						{order === 'asc' ? (
							<i className="fa fa-sort-amount-asc"></i>
						) : (
							<i className="fa fa-sort-amount-desc"></i>
						)}
						<span> Percentage Sort</span>
					</div>
				</div>
				<div className="row mt-3 d-xs-block d-block d-lg-flex">
					{ records.length === 0 ? (
						<div className="col">
							<div className="card p-3 mb-4 no-records">
								<Typography variant="h5">No records found</Typography>
							</div>
						</div>
					): null }
					{ records.map((row, index) => (
						<div className="col" key={index}>
							<div className="card p-3 mb-4">
								<div className="row">
									<div className="col cell-logo-mobile">
										<Avatar variant="square" className="logo" src={row.logo} alt={row.stock_symbol} />
										<div className="col-name">
											<Typography variant="h5">{row.stock_symbol}</Typography>
											<Typography color="textSecondary"><small>{row.stock_name ? row.stock_name : '-'}</small></Typography>
										</div>
									</div>
									<div className="col text-right">
										<p className="mb-0"><small>Undervalued</small></p>
										<p className="mb-0"><span className="valuebox">
											{row.percentage ? formatCurrency(row.percentage) + '%' : '-' }	
										</span></p>
									</div>
								</div>
								<div className="row mt-2">
									<div className="col">
										<p className="mb-0">
											<small>Current Price </small>
											<strong className="fw-600 price-value">${formatCurrency(row.current_value)}</strong>
										</p>
									</div>
									<div className="col text-right">
										<p className="mb-0">
											<small>Target Price</small>
											<strong className="fw-600 price-value">${formatCurrency(row.fair_value)}</strong>
										</p>
									</div>
								</div>
							</div>
						</div>
					)) }
				</div>
				{/* MOBILE VIEW */}
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

export default Evaluation;