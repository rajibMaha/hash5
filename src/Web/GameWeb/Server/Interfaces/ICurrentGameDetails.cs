using RforU.Interfaces;

namespace RforU.Interfaces
{
    internal interface ICurrentGameDetails
    {
        IGame CurrentGame { get; set; }
        IPlayer PrimaryPlayer { get; set; }
        IPlayer Opponent { get; set; }
    }
}