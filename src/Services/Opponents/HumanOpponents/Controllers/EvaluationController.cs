using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;

namespace HumanOpponents.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class EvaluationController : ControllerBase
    {
        [HttpPost]
        [Route("Evaluate")]
        [ProducesResponseType(StatusCodes.Status200OK, Type = typeof(bool))]
        [ProducesResponseType(StatusCodes.Status500InternalServerError)]
        public ActionResult<string> Evaluate([FromBody] Dictionary<string, string> games)
        {
            //do logic here then return the winnerId 
            return Ok("winnerId");
        }

        public MoveResult MoveResult(string primaryPlayerId, List<IGame> opponentsMoves)
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

    public class MoveResult
    {
    }

    public interface IGame
    {
    }
}
