using System.Collections.Generic;

namespace RforU.Interfaces
{
    public interface IGame
    {
        string GameId { get; set; }
        bool Active { get; set; }
        List<IPlayer> Players { get; set; }
    }
}