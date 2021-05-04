using System.Collections.Generic;

namespace RforU.Interfaces
{
    public interface IGameService
    {
       
        IMoveResult Play(string primaryPlayerId, List<IGame> games);

    }
}
