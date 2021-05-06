using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using RforU.GameManager.API.Interfaces;

namespace RforU.GameManager.API.Interfaces
{
    public interface IGameDetails
    {
        IGame CurrentGame { get; set; }
        IPlayer PrimaryPlayer { get; set; }
        IPlayer  Opponent { get; set; }

    }
}
