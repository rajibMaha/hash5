#region

using System.Collections.Generic;

#endregion

namespace RforU.Interfaces
{
    public interface IGameService
    {
        IMoveResult Play(string primaryPlayerId, List<IGame> games);
    }
}