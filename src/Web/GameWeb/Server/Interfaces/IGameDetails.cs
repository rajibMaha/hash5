namespace RforU.Interfaces
{
    public interface IGameDetails
    {
        IGame CurrentGame { get; set; }
        IPlayer PrimaryPlayer { get; set; }
        IPlayer Opponent { get; set; }
    }
}