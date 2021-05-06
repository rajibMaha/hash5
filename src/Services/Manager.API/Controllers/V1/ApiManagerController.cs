using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json.Linq;
using RforU.Manager.API.Interfaces;

namespace RforU.Manager.API.Controllers.V1
{
    [Route("api/[controller]")]
    [ApiController]
    public class ApiManagerController : ControllerBase
    {
        private readonly IApiManagerControllerService _apiManagerControllerService;

        public ApiManagerController(IApiManagerControllerService apiManagerControllerService)
        {
            _apiManagerControllerService = apiManagerControllerService;
        }

        [HttpPost]
        [Route("HandleEvents")]
        [ProducesResponseType(StatusCodes.Status200OK, Type = typeof(bool))]
        [ProducesResponseType(StatusCodes.Status500InternalServerError)]
        public async Task<ActionResult<bool>> HandleEvents([FromBody] JObject payload , [FromQuery] string EventType)
        {

            await _apiManagerControllerService.HandleEvents(payload, EventType);
            return Ok(true);
        }

    }
}
