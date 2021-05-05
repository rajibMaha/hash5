using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using RforU.Interfaces;

namespace RforU.Interfaces
{
    public interface IGameDetails
    {
        IGame CurrentGame { get; set; }
        IPlayer PrimaryPlayer { get; set; }
        IPlayer  Opponent { get; set; }

    }
}
