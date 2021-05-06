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

    }
}
