import { CreateBasicComputerPlayer, CreateTacticalComputerPlayer } from "../../Services/Utils"

export const GetBasicComputerPlayer = () => {
    return CreateBasicComputerPlayer()
}
export const GetTacticalComputerPlayer = () => {
    return CreateTacticalComputerPlayer()
}
