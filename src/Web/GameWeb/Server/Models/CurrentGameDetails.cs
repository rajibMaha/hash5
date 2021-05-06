#region

using RforU.Interfaces;

#endregion

namespace RforU.Models
{
    internal class CurrentGameDetails : ICurrentGameDetails
    {
        public IGame CurrentGame { get; set; }
        public IPlayer PrimaryPlayer { get; set; }

        public IPlayer Opponent { get; set; }
    }
}