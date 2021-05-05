import { makeStyles } from "@material-ui/core";

 const GlobalStyle = makeStyles((theme) => ({
 
  backdrop: {
    zIndex: theme.zIndex.drawer + 1,
    color: '#fff',
  },
  paper: {
    padding: theme.spacing(2),
    textAlign: 'center',
    color: theme.palette.text.secondary,
  },
}));


export default GlobalStyle