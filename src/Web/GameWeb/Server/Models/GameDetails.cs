#region

using RforU.Interfaces;

#endregion

namespace RforU.Models
{
    public class GameDetails : IGameDetails
    {
        public IGame CurrentGame { get; set; }
        public IPlayer PrimaryPlayer { get; set; }
        public IPlayer Opponent { get; set; }
    }
}