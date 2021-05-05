import React, { useEffect, useState } from 'react';
import { DataGrid, } from '@material-ui/data-grid';
import Button from '@material-ui/core/Button/Button';
import { IGame, IPlayer } from '../../Services/TypeDefinations';
import { forEach } from 'lodash';

import OnlinePlayersStyle, {OnlinePlayersStyledTableRow} from './OnlinePlayerStyle';

import Table from '@material-ui/core/Table';
import TableBody from '@material-ui/core/TableBody';
import TableCell from '@material-ui/core/TableCell';
import TableContainer from '@material-ui/core/TableContainer';
import TableHead from '@material-ui/core/TableHead';
import TableRow from '@material-ui/core/TableRow';
import Paper from '@material-ui/core/Paper';
import IconButton from '@material-ui/core/IconButton';
import SportsEsportsIcon from '@material-ui/icons/SportsEsports';


const OnlinePlayers = (props: { Players: IPlayer[], HandleSelection: (opponent: IPlayer) => any }) => {

  const { Players, HandleSelection } = props;

  const [players, SetPlayers] = useState<IPlayer[]>(Players)

  useEffect(() => {
   
    SetPlayers(props.Players)

  }, [props]);

  const classes = OnlinePlayersStyle();

  return (
    <div className={classes.tableContainer}>
    <TableContainer component={Paper}>
      Online Users 
      <Table className={classes.table} aria-label="simple table">
        <TableHead>
          <TableRow>
            <TableCell align="left">Name</TableCell>
            <TableCell align="left">Player ID</TableCell>
            <TableCell align="left">Online Since </TableCell>
            <TableCell align="right">Select</TableCell>
          </TableRow>
        </TableHead>
        <TableBody>
          {players && players.map((row) => (
            <OnlinePlayersStyledTableRow key={row.playerId}>
              <TableCell align="left">{row.name}</TableCell>
              <TableCell align="left">{row.playerId}</TableCell>
              <TableCell align="left">{new Date(row.onlineSince as string).toLocaleTimeString()}</TableCell>
              <TableCell align="right">
                {(<IconButton onClick={() => HandleSelection(row)}>
                  <SportsEsportsIcon color="primary" />
                </IconButton>)}

              </TableCell> 

            </OnlinePlayersStyledTableRow>
          ))}
        </TableBody>
      </Table>
    </TableContainer>
    </div>
  );
}

export default OnlinePlayers;