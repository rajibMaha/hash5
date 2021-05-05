import { makeStyles, TableRow, withStyles } from "@material-ui/core";

const OnlinePlayersStyle = makeStyles((theme) => ({
    table: {
     
    },
    tableContainer:{

      paddingTop:30,
      // paddingLeft:150,
      // paddingRight:150
    }    
  }));

  export const OnlinePlayersStyledTableRow = withStyles((theme) => ({
    root: {
      '&:nth-of-type(odd)': {
        backgroundColor: theme.palette.action.hover,
      },
    },
  }))(TableRow);

  export default OnlinePlayersStyle 