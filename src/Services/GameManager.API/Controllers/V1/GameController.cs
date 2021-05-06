#region

using System;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using RforU.DistributedPackage.Exception;
using RforU.GameManager.API.Interfaces;
using RforU.GameManager.API.Models;

#endregion

namespace RforU.GameManager.API.Controllers
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
        [Route("UserGameData")]
        [ProducesResponseType(StatusCodes.Status200OK, Type = typeof(IGameData))]
        [ProducesResponseType(StatusCodes.Status500InternalServerError)]
        public async Task<ActionResult<IGameData>> UserGameData([FromQuery] string userId)
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

                return StatusCode(StatusCodes.Status500InternalServerError,
                    RforUErrorCodes.GetError(ErrorType.Application));
            }
        }

       
        [HttpPost]
        [Route("GameSubmitted")]
        [ProducesResponseType(StatusCodes.Status200OK, Type = typeof(IGameData))]
        [ProducesResponseType(StatusCodes.Status500InternalServerError)]
        public async Task<ActionResult<bool>> GameSubmitted([FromBody] IGame gameDetails)
        {

            try
            {

                bool initData = await _gameControllerService.GameSubmitted(gameDetails);
                return Ok(initData);
            }
            catch (Exception ex)
            {
                //TODO: implement Log
                //TODO: use custom Exception Filter 

                return StatusCode(StatusCodes.Status500InternalServerError,
                    RforUErrorCodes.GetError(ErrorType.Application));
            }


        }

        [HttpPut]
        [Route("OnlineStatusUpdate")]
        [ProducesResponseType(StatusCodes.Status200OK, Type = typeof(IGameData))]
        [ProducesResponseType(StatusCodes.Status500InternalServerError)]
        public async Task<ActionResult<bool>> OnlineStatusUpdate([FromBody] IGame gameDetails)
        {

            try
            {

                bool initData = await _gameControllerService.GameSubmitted(gameDetails);
                return Ok(initData);
            }
            catch (Exception ex)
            {
                //TODO: implement Log
                //TODO: use custom Exception Filter 

                return StatusCode(StatusCodes.Status500InternalServerError,
                    RforUErrorCodes.GetError(ErrorType.Application));
            }


        }

    }
}