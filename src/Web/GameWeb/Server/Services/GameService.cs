using System.Collections.Generic;

#region Application Reff
using RforU.Server.Models;
using RforU.Interfaces;
#endregion

namespace RforU.Server.Services
{


    internal class GameService :  IGameService
    {
        private readonly IActiveGameRepository _activeGameRepository;
        private readonly IOnlinePlayerRepository _onlinePlayerRepository;
        private readonly IMoveRepository _moveRepository;

        internal GameService(

            IActiveGameRepository activeGameRepository,
            IOnlinePlayerRepository onlinePlayerRepository,
            IMoveRepository moveRepository
        )
        {
            _activeGameRepository = activeGameRepository;
            _onlinePlayerRepository = onlinePlayerRepository;
            _moveRepository = moveRepository;
        }

        public IMoveResult Play(string primaryPlayerId, List<IGame> opponentsMoves)
        {
            //var moveResult = new MoveResult()
            //{
            //    Win = myMove.Beats.Any(m => opponentsMoves.Any(o => o.Name == m))
            //};

            //#region Construct Result Message
            //var opponentsMovesNames = String.Join(", ", opponentsMoves.Select(o => o.Name).ToArray());
            //moveResult.Message = moveResult.Win
            //    ? $"hurray You Win, {myMove.Name} Beats  opponent(s) move(s): {opponentsMovesNames}"
            //    : $"Sorry Your Move {myMove.Name} did not Beat any opponent(s) move(s): {opponentsMovesNames}  "; 
            //#endregion
            
            return new MoveResult();
        }
    }

}
