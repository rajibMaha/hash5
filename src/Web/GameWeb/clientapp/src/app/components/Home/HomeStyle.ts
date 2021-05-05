import { colors, makeStyles } from "@material-ui/core";

 const HomeStyle = makeStyles((theme) => ({
 
  backdrop: {
    zIndex: theme.zIndex.drawer + 1,
    color: '#fff',
  },
  paper: {
    padding: theme.spacing(2),
    textAlign: 'center',
    color: theme.palette.text.secondary,
  },
  Container:{
    background:colors.common.white,
    paddingTop:20,
    paddingLeft:20,
    paddingRight:20
  }
}));


export default HomeStyle