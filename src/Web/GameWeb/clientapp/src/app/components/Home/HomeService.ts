import { GetCurrentUserID, IsLoggedIn } from "../../Services/AuthticationService";
import { AddCurrent, GetGameData, GetPlayerFromId } from "../../Services/GameManagerService"
import { IPlayer } from "../../Services/TypeDefinations";
import { CreateHumanPlayer } from "../../Services/Utils"

export const UserGetData = async (playerID: string) => {
  return await GetGameData(playerID);
}

export const GetUserID = (): string => {
  return GetCurrentUserID();

}

export const UserLoggedIn = () => {
  return IsLoggedIn();

}


export const AddCurrentUser = async ( currentUser:IPlayer) => {

  return await AddCurrent(currentUser)

} 


export const Getpponent = (opponentId :string) =>{
return GetPlayerFromId(opponentId)

}

export const CreateCurrentUser = (playerId: string):IPlayer => {
    return CreateHumanPlayer(playerId)
}