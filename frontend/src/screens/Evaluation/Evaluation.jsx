import React, { useState, useEffect } from 'react';
import clsx from 'clsx';

import Table from '@material-ui/core/Table';
import TableBody from '@material-ui/core/TableBody';
import TableCell from '@material-ui/core/TableCell';
import TableContainer from '@material-ui/core/TableContainer';
// import TablePagination from '@material-ui/core/TablePagination';
import TableRow from '@material-ui/core/TableRow';
import Paper from '@material-ui/core/Paper';
// import Checkbox from '@material-ui/core/Checkbox';
import LinearProgress from '@material-ui/core/LinearProgress';
import Typography from '@material-ui/core/Typography';
// import Button from '@material-ui/core/Button';
import Snackbar from '@material-ui/core/Snackbar';

import PageviewIcon from '@material-ui/icons/Pageview';

import useStyles from './EvaluationStyle';
import useCommonStyles from '../../common/style';
import useDebounce from '../../hooks/useDebounce';
// import EnhancedTableToolbar from '../../components/EnhancedTableToolbar';
import EnhancedTableHead from '../../components/EnhancedTableHead';
import API from '../../axios/axiosApi';
import { formatDate, formatCurrency } from '../../utils/formatter';


const headCells = [
	{ key: 'id', numeric: true, disablePadding: false, label: 'ID', sortable: false },
	{ key: 'stock_symbol', numeric: false, disablePadding: false, label: 'Stock Symbol', sortable: false },
	{ key: 'stock_name', numeric: false, disablePadding: false, label: 'Stock Name', sortable: false },
	{ key: 'fair_value', numeric: true, disablePadding: false, label: 'Fair Value', sortable: false },
	{ key: 'current_value', numeric: true, disablePadding: false, label: 'Current Value', sortable: false },
	{ key: 'percentage', numeric: true, disablePadding: false, label: 'Percentage', sortable: false },
	{ key: 'created_at', numeric: false, disablePadding: false, label: 'Created At', sortable: false },
];


const Evaluation = (props) => {
	const classes = useStyles();
	const commonClasses = useCommonStyles();
	const [loading, setLoading] = useState(false);
	// const [search, setSearch] = useState('');
	const [search] = useState('');
	const [records, setRecords] = useState([]);
	// const [totalRecords, setTotalRecords] = useState(0);
	const debouncedSearch = useDebounce(search, 500);

	const [order, setOrder] = useState('asc');
	const [orderBy, setOrderBy] = useState('id');
	const [selected, setSelected] = useState([]);
	// const [pageSize, setPageSize] = useState(10);
	// const [page, setPage] = useState(0);
	const pageSize = 10, page = 0;
	const [snack, setSnack] = useState({ open: false, message: '' });
	// const [refreshRecords, setRefreshRecords] = useState(false);
	

	useEffect(() => {
		const fetchEvaluatedData = async () => {
			setLoading(true);
			try {
				/* let postData = {
					order,
					orderBy,
					pageOffset: page * pageSize,
					pageSize,
					searchText: debouncedSearch,
				}; */
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
	const handleRequestSort = (event, property) => {
		const isAsc = orderBy === property && order === 'asc';
		setOrder(isAsc ? 'desc' : 'asc');
		setOrderBy(property);
	};

	/**
	 * Toogle select all
	 * 
	 * @param {*} event 
	 */
	const handleSelectAll = event => {
		let newSelected = [];
		if (event.target.checked) {
			newSelected = records.map((item, index) => index);
		}
		setSelected(newSelected);
	};

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

	/* const handleDelete = async () => {
		if (selected.length > 0) {
			let deleteIds = selected.map(item => records[item].id);
			console.log("deleteIds : ",deleteIds);
			try {
				setLoading(true);
				const response = await API.post('delete_videos', { deleteIds });
				if (response.data.success) {
					// console.log("response asdsadsadsa ==> ",response.data);
					handleSnackToogle(response.data.message)
					setSelected([]);
					setRefreshRecords(refreshRecords => (!refreshRecords));
				} else {
					console.log("response ==> ",response.data);
					handleSnackToogle(response.data.message)
				}
			setLoading(false);
			} catch (error) {
				console.log("ERROR in handleDelete : ", error);
				setLoading(false);
			}
		}
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
			<div className={classes.pageHeader} >
				<div className={classes.row}>
					<div className={classes.pageTitle}>
						<PageviewIcon fontSize="large" className={classes.titleIcon} />
						<Typography variant="h4">Evaluation</Typography>
					</div>
					{/* <Button color="primary" variant="contained" onClick={openAddUser}>Add User</Button> */}
				</div>
			</div>
			<div className={classes.content}>
				<Paper className={clsx(classes.paper, commonClasses.paperContainer)}>
					{ loading ? <LinearProgress className={commonClasses.progressBar} /> : null }
					{/* <EnhancedTableToolbar
						numSelected={selected.length}
						onSearchChange={handleSearch}
						handleDelete={() => {}}
						searchComment="Search Value"
					/> */}
					<TableContainer>
						<Table className={classes.table} size='medium'>
							<EnhancedTableHead
								numSelected={selected.length}
								order={order}
								orderBy={orderBy}
								onSelectAll={handleSelectAll}
								onRequestSort={handleRequestSort}
								rowCount={records.length}
								headCells={headCells}
								haveMultiSelect={false}
							/>
							<TableBody>
							{ records.length === 0 ? (
								<TableRow>
									<TableCell colSpan={headCells.length}>No records found</TableCell>
								</TableRow> ): null }
							{ records.map((row, index) => {
								const labelId = `enhanced-table-checkbox-${index}`;
								return (
									<TableRow
										hover
										role="checkbox"
										aria-checked={selected.includes(index)}
										tabIndex={-1}
										key={index}
										selected={selected.includes(index)}
										// onClick={() => openDetailPage(index)}
										// className={classes.rowHover}
									>
										{/* <TableCell padding="checkbox">
											<Checkbox
												checked={selected.includes(index)}
												onClick={event => event.stopPropagation()}
												onChange={event => handleCheck(event, index)}
											/>
										</TableCell> */}
										<TableCell component="th" id={labelId} scope="row" align="right">
											{row.id}
										</TableCell>
										<TableCell>
											{row.stock_symbol}
										</TableCell>
										<TableCell>{row.stock_name ? row.stock_name : '-'}</TableCell>
										<TableCell align="right">{row.fair_value}</TableCell>
										<TableCell align="right">{row.current_value}</TableCell>
										<TableCell align="right">{row.percentage ? formatCurrency(row.percentage) : '-' }</TableCell>
										<TableCell>{formatDate(row.created_at)}</TableCell>
										{/* <TableCell align="right">{row.label}</TableCell> */}
									</TableRow>
								);
							}) }
							{/* emptyRows > 0 && (
								<TableRow style={{ height:  53 * emptyRows }}>
									<TableCell colSpan={6} />
								</TableRow>
							) */}
							</TableBody>
						</Table>
					</TableContainer>
					{/* <TablePagination
						rowsPerPageOptions={[5, 10, 25]}
						component="div"
						count={totalRecords}
						rowsPerPage={pageSize}
						page={page}
						onChangePage={handleChangePage}
						onChangeRowsPerPage={handleChangeRowsPerPage}
					/> */}
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

export default Evaluation;