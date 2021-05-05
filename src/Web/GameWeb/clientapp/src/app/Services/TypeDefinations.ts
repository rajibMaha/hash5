export type IGame = {
    sessionID:string
    gameId: string,
    active: boolean,
    primaryPlayerId: string,
    opponentId: string,

    //below can be of type Move but nosql azure storage table are not great with rational data
    primaryPlayerMove: string,
    opponentMove: string,

}

export const PlayerType = {
    human: "Human",
    randomComputer: "RndomComputer",
    tacticalComputer: "TacticalComputer"

}
export type IPlayer = {
    id?:number, // needed for grid 
    playerId?: string,
    name?: string,
    online?: boolean

    available?: boolean
    onlineSince?: string 
    typeOfPlayer?:string
} 

export type IGameData = {
    onlinePlayers: IPlayer[],
    activeGames: IGame[],
    stagedGames: IGame[]
}