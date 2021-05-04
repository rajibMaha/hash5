using System;
using System.Collections.Generic;
using RforU.Interfaces;

namespace RforU.Models
{
    internal class Game : IGame
    {
        public string GameId { get; set; }
        public bool Active { get; set; }
        public string PrimaryPlayerId { get; set; } // can be of IPlayer if rational  database used 
        public string OpponentId { get; set; }
        public string PrimaryPlayerMove { get; set; }
        public string OpponentMove { get; set; }
        public void InitGame()
        {
            GameId = Guid.NewGuid().ToString();
        }
    }
}
