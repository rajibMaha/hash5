#region

using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using RforU.DistributedPackage.Exception;
using RforU.PlayerManager.API.Interfaces;
using RforU.PlayerManager.API.Models;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;

#endregion

namespace RforU.PlayerManager.API.Controllers.V1
{
    [Route("api/v1/[controller]")]
    [ApiController]
    public class PlayerController : ControllerBase
    {
        private readonly IPlayerControllerService _playerControllerService;

        public PlayerController(IPlayerControllerService playerControllerService)
        {
            _playerControllerService = playerControllerService;
        }


        [HttpGet]
        [Route("GetPlayer")]
        [ProducesResponseType(StatusCodes.Status200OK, Type = typeof(IPlayer))]
        [ProducesResponseType(StatusCodes.Status500InternalServerError)]
        public async Task<ActionResult<IPlayer>> GetPlayer([FromQuery] string playerId)
        {
            try
            {
                IPlayer player = await _playerControllerService.GetPlayer(playerId);
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

        [HttpGet]
        [Route("GetInitialData")]
        [ProducesResponseType(StatusCodes.Status200OK, Type = typeof(List<IPlayer>))]
        [ProducesResponseType(StatusCodes.Status500InternalServerError)]
        public async Task<ActionResult<IPlayer>> GetInitialData([FromQuery] string playerId)
        {
            try
            {
                List<IPlayer> player = await _playerControllerService.GetInitialData(playerId);
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

        [HttpGet]
        [Route("GetOnlinePlayer")]
        [ProducesResponseType(StatusCodes.Status200OK, Type = typeof(List<IPlayer>))]
        [ProducesResponseType(StatusCodes.Status500InternalServerError)]
        public async Task<ActionResult<IPlayer>> GetOnlinePlayer()
        {
            try
            {
                List<IPlayer> player = await _playerControllerService.GetOnlinePlayer();
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
        [ProducesResponseType(StatusCodes.Status200OK, Type = typeof(bool))]
        [ProducesResponseType(StatusCodes.Status500InternalServerError)]
        public async Task<ActionResult<bool>> AddCurrent([FromBody] Player user)
        {
            try
            {
                bool initData = await _playerControllerService.AddCurrent(user);
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