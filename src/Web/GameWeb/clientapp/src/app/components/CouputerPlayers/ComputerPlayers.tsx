import React, { useEffect, useState } from 'react';
import { Backdrop, CircularProgress, Fab, Grid, Paper } from '@material-ui/core';

import { IGameData, IPlayer } from '../../Services/TypeDefinations';
import ComputerIcon from '@material-ui/icons/Computer';
import ImportantDevicesIcon from '@material-ui/icons/ImportantDevices';
import ComputerPlayersStyle from './ComputerPlayersStyle';
import { GetTacticalComputerPlayer, GetBasicComputerPlayer } from './ComputerPlayersService';


type IUIOptions = {
  ShowOnlinePlayer: boolean,
  ShowPlayerSelection: boolean,
  Show: boolean,

}


const ComputerPlayers = (props: { HandleSelection: (opponent: IPlayer) => any }) => {

  const classes = ComputerPlayersStyle();

  const { HandleSelection } = props;
  const [UIOptions, SetUIOptions] = useState<boolean>(false)




  return (
    <Grid container>
      <Grid item xs={12}>
        <Paper className={classes.paper}>
          <Fab color="primary" aria-label="add" onClick={() => HandleSelection(GetBasicComputerPlayer())}>
            <ComputerIcon />
          </Fab>
        </Paper>
      </Grid>
      <Grid item xs={12}>
        <Paper className={classes.paper}>
          <Fab color="primary" aria-label="add" onClick={() => HandleSelection(GetTacticalComputerPlayer())}>
            <ImportantDevicesIcon />
          </Fab>
        </Paper>
      </Grid>
    </Grid>
  );

}

export default ComputerPlayers;
