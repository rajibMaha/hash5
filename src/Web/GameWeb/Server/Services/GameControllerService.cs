using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using RforU.Models;
using RforU.Interfaces;

namespace RforU.Server.Services
{
    internal class GameControllerService : GameServiceBase ,IGameControllerService
    {

        public GameControllerService(IActiveGameRepository activeGameRepository,
            IOnlinePlayerRepository onlinePlayerRepository
        ):base(activeGameRepository , onlinePlayerRepository)
        {
            
        }
        /// <summary>
        /// return the list of Online player and 
        /// </summary>
        /// <param name="userId"> ID of user</param>
        /// <returns></returns>
        public async Task<IInitialData> GetInitialData(string userId)
        {
            var onlinePlayer = await GetOnlinePlayer();
            var activeGames = await GetActiveGames();


            var initData = new InitialData()
            {
                OnlinePlayer = onlinePlayer,
                ActiveGames = activeGames
            };
            return initData;
        }

        internal Task<List<IGame>> GetActiveGames()
        {
            var activeGame = base.activeGameRepository.GetActiveGames();
            
            return Task.FromResult<List<IGame>>(activeGame);
        }



        internal Task<List<IPlayer>> GetOnlinePlayer()
        {


            var onlinePlayer = base.onlinePlayerRepository.GetOnlinePlayers();
            return Task.FromResult<List<IPlayer>>(onlinePlayer);

        }
    }


}
