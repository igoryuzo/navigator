import { makeStyles } from '@material-ui/core/styles';

export default makeStyles(theme => ({
	root: {
		padding: theme.spacing(3)
	},
	pageHeader: {
		paddingTop: theme.spacing(2),
		paddingBottom: theme.spacing(2),
	},
	content: {
		marginTop: theme.spacing(2)
	},
	row: {
		height: '42px',
		display: 'flex',
		flexDirection: 'row',
		justifyContent: 'space-between',
		alignItems: 'center',
		marginTop: theme.spacing(1),
		[theme.breakpoints.down('xs')]: {
			flexDirection: 'column',
		}
	},
	spacer: {
		flexGrow: 1
	},
	importButton: {
		marginRight: theme.spacing(1)
	},
	exportButton: {
		marginRight: theme.spacing(1)
	},
	paper: {
		width: '100%',
		marginBottom: theme.spacing(2),
	},
	table: {
		minWidth: 750,
	},
	pageTitle: {
		display: 'flex',
		flexDirection: 'row',
		alignItems: 'center',
		justifyContent: 'space-between',
		marginRight: theme.spacing(1),
		[theme.breakpoints.down('xs')]: {
			marginBottom: theme.spacing(2)
		}
	},
	titleIcon: {
		marginRight: theme.spacing(1),
	},
	inputField: {
		marginBottom: theme.spacing(2),
	},
	dialogHeader: {
		display: 'flex',
		flexDirection: 'row',
		justifyContent: 'space-between',
		alignItems: 'center',
		padding: theme.spacing(1),
	},
	rowHover: {
		cursor: 'pointer',
	},
	nameCell: {
		display: 'flex',
		flexDirection: 'row',
		alignItems: 'center',
		justifyContent: 'start',
	},
	avatar: {
		marginRight: theme.spacing(2),
	},
	toolbar: {
		display: 'flex',
		justifyContent: 'flex-end',
		alignItems: 'center',
	},
}));