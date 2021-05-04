using System.Collections.Generic;
using RforU.Interfaces;

namespace RforU.Models
{
    internal  class InitialData : IInitialData
    {
        
        public List<IGame> ActiveGames { get; set; }
        public List<IPlayer> OnlinePlayer { get; set; }
    }

    
}
