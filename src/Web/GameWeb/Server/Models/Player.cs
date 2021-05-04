using RforU.Enums;
using RforU.Interfaces;

namespace RforU.Models
{
    internal class Player : IPlayer
    {
        public int PlayerId {get; set; }
        public string Name { get; set; }
        public bool Online { get; set; }
        public IMove CurrentMove { get; set; }
        public IPlayer Opponent {get; set; }

        public PlayerType OpponentType { get; set; }
    }
}
