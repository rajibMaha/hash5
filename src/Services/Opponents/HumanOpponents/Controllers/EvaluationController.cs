using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

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
