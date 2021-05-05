#region

using System;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using RforU.DistributedPackage.Exception;
using RforU.Interfaces;
using RforU.Models;

#endregion

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

        [HttpGet]
        [Route("GetPlayer")]
        [ProducesResponseType(StatusCodes.Status200OK, Type = typeof(IPlayer))]
        [ProducesResponseType(StatusCodes.Status500InternalServerError)]
        public async Task<ActionResult<IPlayer>> GetPlayer([FromQuery] string playerId)
        {
            try
            {

                IPlayer player = await _gameControllerService.GetPlayer(playerId);
                return Ok(player);
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
        [Route("AddCurrent")]
        [ProducesResponseType(StatusCodes.Status200OK, Type = typeof(IGameData))]
        [ProducesResponseType(StatusCodes.Status500InternalServerError)]
        public async Task<ActionResult<bool>> AddCurrent([FromBody] Player user)
        {

            try
            {

                bool initData = await _gameControllerService.AddCurrent(user);
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