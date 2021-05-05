import React, { useEffect, useState } from 'react';
import Button from '@material-ui/core/Button/Button';
import { IGame, IGameDetails, IPlayer, PlayerType } from '../../Services/TypeDefinations';
import { forEach } from 'lodash';

import StartGameStyle, { MyStageGamesStyledTableRow } from './StartGameStyle';

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
import { Backdrop, CircularProgress, Fab, Grid, Paper } from '@material-ui/core';
import { LockPlayer,RegisterMove } from '../../Services/GameManagerService';
import { Container } from '@material-ui/core';
import AddIcon from '@material-ui/icons/Add';
import { Guid } from "guid-typescript";
import { CraeteGame } from '../../Services/Utils';

const StartGame = (props: { PrimaryPlayer: IPlayer, Opponent: IPlayer }) => {

  const { PrimaryPlayer, Opponent } = props;

  const [SessionID, SetSessionID] = useState<string>()
  const [Rounds, SetRounds] = useState<number>(0)
  const [gameDetails , SetGameDetails] =  useState<IGameDetails>()
  useEffect(() => {
    async function _lockPlayerOnLoad() {
      await LockPlayer(PrimaryPlayer.playerId);

    };
    _lockPlayerOnLoad()

  })

  const HandleClick = (selection: string) => {
    //implement inmemory cache , Below method is buggy
    const game: IGame|undefined = CraeteGame(PrimaryPlayer, Opponent)

    game.sessionID = SessionID;
    game.primaryPlayerMove = selection;
    SetRounds(Rounds+1)
    if(Rounds > 3){
      game.sessionID = Guid.create().toString();
      SetRounds(0);
    }
    SetGameDetails({...(gameDetails as any ), CurrentGame:game})
    RegisterMove(gameDetails);

  }


  return (
    <div>
      <Container component="main" maxWidth="xl">
        <Grid container spacing={3}>
          <Grid item xs={6}>
            <Fab color="primary" aria-label="add" onClick={() => HandleClick("Rock")}>
              <AddIcon />
              Rock
            </Fab>
          </Grid>
          <Grid item xs={6}>
            <Fab color="primary" aria-label="add" onClick={() => HandleClick("Paper")}>
              <AddIcon />
              Paper
            </Fab>
          </Grid>
          <Grid item xs={6}>
            <Fab color="primary" aria-label="add" onClick={() => HandleClick("Scissors")}>
              <AddIcon />
              Scissors
            </Fab>
          </Grid>
        </Grid>
      </Container>
    </div>

  )

}

export default StartGame;