namespace RforU.Interfaces
{
    public interface IGame
    {
        string SessionId { get; set; }
        string GameId { get; set; }
        bool Active { get; set; }
        string PrimaryPlayerId { get; set; }

        bool PrimaryPlayerSubmitted { get; set; }

        string OpponentId { get; set; }

        bool OpponentSubmitted { get; set; }

        //below can be of type Move but nosql azure storage table are not great with rational data
        string PrimaryPlayerMove { get; set; }
        string OpponentMove { get; set; }



        void InitGame();
    }
}