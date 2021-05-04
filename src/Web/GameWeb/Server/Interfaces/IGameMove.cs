using System.Collections.Generic;

namespace RforU.Interfaces
{
    public interface IGameMove
    {
        List<IMove> Moves { get; set; }
        IMoveResult Play(IMove myMove, List<IMove> opponentsMoves);

    }
}
