using RforU.Enums;

namespace RforU.Interfaces
{
    public interface IPlayer
    {
        int PlayerId { get; set; }
        string Name { get; set; }
        bool Online { get; set; }
        IMove CurrentMove { get; set; }
        IPlayer Opponent { get; set; }
        PlayerType OpponentType { get; set; }
    }
}