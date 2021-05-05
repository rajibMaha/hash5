import { IPlayer, PlayerType } from "./TypeDefinations";
import { Guid } from "guid-typescript";
import RforUCONSTANTS from "../CONSTANTS";
export const wait = (ms: number) => new Promise(res => setTimeout(res, ms));

export const CreateHumanPlayer = (userId: string): IPlayer => {
    return {
        available: true,
        online: true,
        playerId: userId,
        onlineSince: new Date().toISOString(),
        typeOfPlayer: PlayerType.human

    }
}


export const CreateBasicComputerPlayer = (): IPlayer => {
    return {
        available: true,
        online: true,
        playerId: RforUCONSTANTS.BASIC_COMPUTERPLAYER_ID,
        onlineSince: new Date().toISOString(),
        typeOfPlayer: PlayerType.randomComputer

    }
}

export const CreateTacticalComputerPlayer = (): IPlayer => {
    return { ...CreateBasicComputerPlayer(), playerId: RforUCONSTANTS.ADVANCED_COMPUTERPLAYER_ID, typeOfPlayer: PlayerType.tacticalComputer }


}

