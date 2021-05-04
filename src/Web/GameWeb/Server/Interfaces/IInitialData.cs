using System.Collections.Generic;

namespace RforU.Interfaces
{
    public interface IInitialData
    {
        List<IGame> ActiveGames { get; set; }
        List<IPlayer> OnlinePlayer { get; set; }
    }
}