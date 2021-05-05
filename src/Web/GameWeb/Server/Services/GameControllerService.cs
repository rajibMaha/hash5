#region

using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using RforU.Interfaces;
using RforU.Models;

#endregion

namespace RforU.Services
{
    internal class GameControllerService : IGameControllerService
    {
        private readonly IActiveGameRepository _activeGameRepository;
        private readonly IOnlinePlayerRepository _onlinePlayerRepository;
        private readonly IStagedGameRepository _stagedGameRepository;


        //TODO: move all this code to service Game service is only entity that will talk to Repository
        public GameControllerService(
            IActiveGameRepository activeGameRepository,
            IOnlinePlayerRepository onlinePlayerRepository,
            IStagedGameRepository stagedGameRepository

        )
        {
            _activeGameRepository = activeGameRepository;
            _onlinePlayerRepository = onlinePlayerRepository;
            _stagedGameRepository = stagedGameRepository;
        }

        /// <summary>
        /// return the list of Online player and 
        /// </summary>
        /// <param name="userId"> ID of user</param>
        /// <returns></returns>
        public async Task<IGameData> GetInitialData(string playerId)
        {
            var onlinePlayer = await GetOnlinePlayer();
            var activeGames = await GetActiveGames(playerId);
            var stagedGames = await GeStagedGames(playerId);

            var initData = new GameData()
            {
                OnlinePlayers = onlinePlayer,
                ActiveGames = activeGames,
                StagedGames = stagedGames
                
            };
            return initData;
        }

        public async  Task<bool> AddCurrent(IPlayer user)
        {
            try
            {
                //TODO: Check if the  exist then update or insert  
                await _onlinePlayerRepository.AddUpdateOnlinePlayers( user);
                return true;
            }
            catch(Exception _ )
            {
                return false;
            }

           
        }

        public async Task<IPlayer> GetPlayer(string userId)
        {
            IPlayer player = await _onlinePlayerRepository.GetPlayer(userId);
            return player;
        }


        internal async Task<List<IGame>> GetActiveGames(string playerId)
        {
            var activeGame = await _activeGameRepository.GetActiveGames(playerId);
            // can not hack developer tool to see the OpponentMove  value 
            return activeGame.Where(g => string.IsNullOrEmpty(g.OpponentMove)).ToList();
        }


        internal async Task<List<IPlayer>> GetOnlinePlayer()
        {
            var onlinePlayer = await _onlinePlayerRepository.GetOnlinePlayers();
            return onlinePlayer;
        }

        internal async Task<List<IGame>> GeStagedGames(string playerId)
        {
            var onlinePlayer = await _stagedGameRepository.GetStagedGames(playerId);
            return onlinePlayer;
        }
    }
}