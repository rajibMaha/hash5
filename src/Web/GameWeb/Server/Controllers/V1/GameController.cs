using System;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using RforU.DistributedPackage.Exception;
using RforU.Interfaces;

namespace RforU.Controllers
{
    [Route("api/v1/[controller]")]
    [ApiController]
    public class GameController : ControllerBase
    {
        private readonly IGameControllerService _gameControllerService;

        public GameController(IGameControllerService gameControllerService)
        {
            _gameControllerService = gameControllerService;
        }


        [HttpGet]
        [Route("UserInitialData/{userId}")]
        [ProducesResponseType(StatusCodes.Status200OK, Type = typeof(IInitialData))]
        [ProducesResponseType(StatusCodes.Status500InternalServerError)]
        public async Task<ActionResult<IInitialData>> UserInitialData(string userId)
        {
            try
            {
                var initData = await _gameControllerService.GetInitialData(userId);
                return Ok(initData);

            }
            catch (Exception ex)
            {
                //TODO: implement Log
                //TODO: use custom Exception Filter 

                return StatusCode(StatusCodes.Status500InternalServerError, RforUErrorCodes.GetError((ErrorType.Application)));
            }

        }

    }

   
}
