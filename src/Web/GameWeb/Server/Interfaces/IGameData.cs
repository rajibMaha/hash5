#region

using System.Collections.Generic;

#endregion

namespace RforU.Interfaces
{
    public interface IGameData
    {
        List<IGame> ActiveGames { get; set; }
        List<IPlayer> OnlinePlayers { get; set; }
        List<IGame> StagedGames { get; set; }
    }
}