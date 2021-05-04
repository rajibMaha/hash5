using System.Collections.Generic;
using RforU.Interfaces;

namespace RforU.Models
{
    internal class Game : IGame
    {
        public string GameId { get; set; }
        public bool Active {get; set; }
        public List<IPlayer> Players { get; set; }
    }
}
