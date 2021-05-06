#region

using RforU.Interfaces;
using System.Collections.Generic;

#endregion

namespace RforU.Models
{
    internal class GameData : IGameData
    {
        public List<IGame> ActiveGames { get; set; }
        public List<IPlayer> OnlinePlayers { get; set; }

        public List<IGame> StagedGames { get; set; }
    }
}