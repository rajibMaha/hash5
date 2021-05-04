using System.Collections.Generic;
using System.Threading.Tasks;
using RforU.Models;
using RforU.Interfaces;

namespace RforU.Services
{
    internal class GameControllerService : IGameControllerService
    {
        private readonly IActiveGameRepository _activeGameRepository;
        private readonly IOnlinePlayerRepository _onlinePlayerRepository;

        public GameControllerService(
            IActiveGameRepository activeGameRepository,
            IOnlinePlayerRepository onlinePlayerRepository
        )
        {
            _activeGameRepository = activeGameRepository;
            _onlinePlayerRepository = onlinePlayerRepository;
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


        internal async Task<List<IGame>> GetActiveGames()
        {
            var activeGame = await _activeGameRepository.GetActiveGames();

            return activeGame;
        }



        internal async Task<List<IPlayer>> GetOnlinePlayer()
        {
            var onlinePlayer = await _onlinePlayerRepository.GetOnlinePlayers();
            return onlinePlayer;

        }
    }


}
