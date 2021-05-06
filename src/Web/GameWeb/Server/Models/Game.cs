#region

using RforU.Interfaces;
using System;

#endregion

namespace RforU.Models
{
    internal class Game : IGame
    {
        public string SessionId { get; set; }
        public string GameId { get; set; }
        public bool Active { get; set; }
        public string PrimaryPlayerId { get; set; } // can be of IPlayer if rational  database used 
        public bool PrimaryPlayerSubmitted { get; set; }

        public string OpponentId { get; set; }
        public bool OpponentSubmitted { get; set; }
        public string PrimaryPlayerMove { get; set; }
        public string OpponentMove { get; set; }

        public void InitGame()
        {
            GameId = Guid.NewGuid().ToString();
        }
    }
}