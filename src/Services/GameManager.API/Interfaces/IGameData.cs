#region

using System.Collections.Generic;

#endregion

namespace RforU.GameManager.API.Interfaces
{
    public interface IGameData
    {
        List<IGame> ActiveGames { get; set; }
        List<IGame> StagedGames { get; set; }
    }
}