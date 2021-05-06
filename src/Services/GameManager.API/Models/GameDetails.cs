#region

using RforU.GameManager.API.Interfaces;

#endregion

namespace RforU.GameManager.API.Models
{
    public class GameDetails : IGameDetails
    {

        public IGame CurrentGame { get; set; }
        public IPlayer PrimaryPlayer { get; set; }
        public IPlayer Opponent { get; set; }
    }
}