using System;
using System.Collections.Generic;
using System.Linq;

#region Application Reff
using RforU.Server.Models;
using RforU.Interfaces;
#endregion

namespace RforU.Server.Services
{


    internal class GameMove : GameMoveBase, IGameMove
    {
        public GameMove() : base()
        {
        }

        public IMoveResult Play(IMove myMove, List<IMove> opponentsMoves)
        {
            var moveResult = new MoveResult()
            {
                Win = myMove.Beats.Any(m => opponentsMoves.Any(o => o.Name == m))
            };

            #region Construct Result Message
            var opponentsMovesNames = String.Join(", ", opponentsMoves.Select(o => o.Name).ToArray());
            moveResult.Message = moveResult.Win
                ? $"hurray You Win, {myMove.Name} Beats  opponent(s) move(s): {opponentsMovesNames}"
                : $"Sorry Your Move {myMove.Name} did not Beat any opponent(s) move(s): {opponentsMovesNames}  "; 
            #endregion
            
            return moveResult;
        }
    }

}
