import { AxiosResponse } from "axios"
import API from "./API"
import { LocalDataStore } from "./LocalDataStore"
import { IGame, IGameData, IGameDetails, IPlayer } from "./TypeDefinations"
import { wait } from "./Utils"

export const GetGameData = async (userId: string) => {

    // var localStore:IGameData = new LocalDataStore();

    if (LocalDataStore.GameData && LocalDataStore.GameData.activeGames.length == 0
        && LocalDataStore.GameData && LocalDataStore.GameData.onlinePlayers.length == 0
        && LocalDataStore.GameData && LocalDataStore.GameData.stagedGames.length == 0) {
        RefreshData(userId) // donot put await there
        await wait(3000);
    }
    return LocalDataStore.GameData
}

const RefreshData = async (userId: string) => {

    //TODO : error handling
    const response: AxiosResponse = await API.get(`/api/v1/Game/UserGameData/?userId=${userId}`);
    response.data != null && (LocalDataStore.GameData = response.data);
    await wait(1000);
    RefreshData(userId);
}

export const AddCurrent = async (player: IPlayer):Promise<boolean> => { 

    try{
        const response: AxiosResponse = await API.post(`/api/v1/Game/AddCurrent`,player);
        return true;
    }catch(ex){
        return false;
    }
   
}

export  const GetPlayerFromId = async (playerId:string) => {

  const response: AxiosResponse = await API.get(`/api/v1/Game/GetPlayer?playerId = ${playerId}`);
  return response.data || {}
}

export  const LockPlayer = async (playerId:string) => {
    const response: AxiosResponse = await API.post(`/api/v1/Game/LockPlayer?playerId = ${playerId}`,);

}

export const RegisterMove = async (gameDetails:IGameDetails) => {

    const response: AxiosResponse = await API.post(`/api/v1/Game/RegisterMover`,gameDetails);
}

