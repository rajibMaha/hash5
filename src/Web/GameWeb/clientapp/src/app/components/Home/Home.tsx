import React, { useEffect, useState } from 'react';
import { DataGrid } from '@material-ui/data-grid';
import { Backdrop, CircularProgress, Container, Fab, Grid, Paper } from '@material-ui/core';
import HomeStyles from './HomeStyle';
import OnlinePlayers from '../OnlinePlayers/OnlinePlayers'
import { LocalDataStore } from '../../Services/LocalDataStore';
import { AddCurrentUser, CreateCurrentUser, GetUserID, UserGetData, UserLoggedIn } from './HomeService';
import { useHistory } from 'react-router-dom';
import { wait } from '../../Services/Utils';
import { IGame, IGameData, IPlayer, PlayerType } from '../../Services/TypeDefinations';
import ComputerIcon from '@material-ui/icons/Computer';
import ImportantDevicesIcon from '@material-ui/icons/ImportantDevices';
import ComputerPlayers from '../CouputerPlayers/ComputerPlayers';
import MyStageGames from '../MyStageGames/MyStageGames';
import RforUCONSTANTS from '../../CONSTANTS';


type IUIOptions = {
  ShowOnlinePlayer: boolean,
  ShowPlayerSelection: boolean,
  Show: boolean,

}


const Home = () => {

  const classes = HomeStyles();
  const history = useHistory();

  const [ShowSpinner, SetShowSpinner] = useState<boolean>(true)
  const [UserGameData, SetUserGameData] = useState<IGameData>()
  const [PrimaryPlayer, SetPrimaryPlayer] = useState<IPlayer>()


  const [UIOptions, SetUIOptions] = useState<boolean>(false)
  const [ShowStartGame, SetShowStartGame] = useState<boolean>(false)

  async function ManageUser() {
    if (!UserLoggedIn()) {
      history.push(`/Login`);
    } else if (PrimaryPlayer == null || PrimaryPlayer.playerId === null) {
      const userId = GetUserID();
      const currentUser = CreateCurrentUser(userId);
      SetPrimaryPlayer(currentUser)
      await AddCurrentUser(CreateCurrentUser(userId))

    }
  };
  ManageUser();



  const spinner = (
    <Backdrop className={classes.backdrop} open={ShowSpinner} >
      <CircularProgress color="inherit" />
    </Backdrop>
  )

  const updateData = async () => {
    const gameData = await UserGetData(PrimaryPlayer?.playerId as string);
    if (gameData == null || (gameData.activeGames?.length == 0 && gameData.onlinePlayers?.length == 0 && gameData.stagedGames?.length == 0)) {
      SetShowSpinner(true);
    } else {
      SetShowSpinner(false);
    }
    SetUserGameData(gameData);
    await wait(5000);
    updateData();
  }


  const HandleOpponentSelection = (opponent: IPlayer) => {
    alert("hi")

  }

  useEffect(() => {
    // Using an IIFE
    async function loadGame() {
      await updateData();
    }
    loadGame();
  }, []);



  const StartGame = (selectedPlayer: IPlayer) => {
    SetShowStartGame(true);


  }

  const PlayersDetails = (
    <Grid container spacing={3}>
      <Grid item xs={6}>
        <Grid container spacing={1}>
          <Grid item xs={12}>
            <Paper className={classes.paper}>
              <OnlinePlayers Players={UserGameData?.onlinePlayers as IPlayer[]} HandleSelection={(opponent: IPlayer) => StartGame(opponent)} ></OnlinePlayers>
            </Paper>
          </Grid>
          <Grid item xs={12}></Grid>
          <Paper className={classes.paper}>
            <MyStageGames Games={UserGameData?.stagedGames as IGame[]} HandleSelection={(opponentId: IPlayer) => StartGame(opponentId)} ></MyStageGames>
          </Paper>
        </Grid>

      </Grid>
      <Grid item xs={6}>
        <ComputerPlayers HandleSelection={(opponent: IPlayer) => StartGame(opponent)} ></ComputerPlayers>
      </Grid>

    </Grid>
  )

  const StartGameElements = (
    <div>CommingSoon StartGame</div>
  )

  return (
    <div className={classes.Container}>
      <Container  >
      {spinner}
      {!ShowStartGame && PlayersDetails}
      {ShowStartGame && StartGameElements}
    </Container>


    </div >
  );

}

export default Home;
