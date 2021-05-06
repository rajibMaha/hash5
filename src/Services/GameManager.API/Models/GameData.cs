#region

using System.Collections.Generic;
using RforU.GameManager.API.Interfaces;

#endregion

namespace RforU.GameManager.API.Models
{
    internal class GameData : IGameData
    {
        public List<IGame> ActiveGames { get; set; }
        public List<IGame> StagedGames { get; set; }
    }
}