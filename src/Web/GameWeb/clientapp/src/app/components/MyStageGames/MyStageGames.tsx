import React, { useEffect, useState } from 'react';
import { DataGrid, } from '@material-ui/data-grid';
import Button from '@material-ui/core/Button/Button';
import { IGame, IPlayer, PlayerType } from '../../Services/TypeDefinations';
import { forEach } from 'lodash';

import MyStageGamesStyle, {MyStageGamesStyledTableRow} from './MyStageGamesStyle';

import Table from '@material-ui/core/Table';
import TableBody from '@material-ui/core/TableBody';
import TableCell from '@material-ui/core/TableCell';
import TableContainer from '@material-ui/core/TableContainer';
import TableHead from '@material-ui/core/TableHead';
import TableRow from '@material-ui/core/TableRow';
import Paper from '@material-ui/core/Paper';
import IconButton from '@material-ui/core/IconButton';
import SportsEsportsIcon from '@material-ui/icons/SportsEsports';
import RforUCONSTANTS from '../../CONSTANTS';


const MyStageGames = (props: { Games: IGame[], HandleSelection: (opponentId: IPlayer) => any }) => {

  const { Games, HandleSelection } = props;
  const [games, SetGames] = useState<IGame[]>(Games)

  useEffect(() => {
   
    SetGames(props.Games)

  }, [props.Games]);

  const classes = MyStageGamesStyle();

const LocalHandleSelection = (row:IGame) => {
  const emptyPlayer:IPlayer = { 
    playerId :row.opponentId,
    typeOfPlayer: row.opponentId === RforUCONSTANTS.ADVANCED_COMPUTERPLAYER_ID ? PlayerType.tacticalComputer 
    :  row.opponentId === RforUCONSTANTS.BASIC_COMPUTERPLAYER_ID  ?  PlayerType.randomComputer
    :PlayerType.human  
  }
  HandleSelection(emptyPlayer);

}


  return (
    <div className={classes.tableContainer}>
       Requests To Play
    <TableContainer component={Paper}>
    
      <Table className={classes.table} aria-label="simple table">
        <TableHead>
       
          <TableRow>
            <TableCell align="left">Opponent</TableCell>
            <TableCell align="left">Active</TableCell>
            <TableCell align="right">Acknowledge</TableCell>
          </TableRow>
        </TableHead>
        <TableBody>
          {games && games.map((row) => (
            <MyStageGamesStyledTableRow key={row.opponentId}>
               <TableCell align="left">{row.opponentId}</TableCell>
              <TableCell align="left">{row.active ? "Active" : "Not Active"}</TableCell>
              <TableCell align="right">
                {(<IconButton onClick={() => LocalHandleSelection(row)}>
                  <SportsEsportsIcon color="primary" />
                </IconButton>)}

              </TableCell> 

            </MyStageGamesStyledTableRow>
          ))}
        </TableBody>
      </Table>
    </TableContainer>
    </div>
  );
}

export default MyStageGames;