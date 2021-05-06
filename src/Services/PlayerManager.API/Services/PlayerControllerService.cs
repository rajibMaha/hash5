#region

using RforU.PlayerManager.API.Interfaces;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;

#endregion

namespace RforU.PlayerManager.API.Services
{
    internal class PlayerControllerService : IPlayerControllerService
    {
        private readonly IOnlinePlayerRepository _onlinePlayerRepository;


        //TODO: move all this code to service Game service is only entity that will talk to Repository
        public PlayerControllerService(
            IOnlinePlayerRepository onlinePlayerRepository
        )
        {
            _onlinePlayerRepository = onlinePlayerRepository;
        }

        /// <summary>
        /// return the list of Online player and 
        /// </summary>
        /// <param name="userId"> ID of user</param>
        /// <returns></returns>
        public async Task<List<IPlayer>> GetInitialData(string playerId)
        {
            var onlinePlayer = await GetOnlinePlayer();
            return onlinePlayer;
        }

        public async Task<bool> AddCurrent(IPlayer user)
        {
            try
            {
                //TODO: Check if the  exist then update or insert  
                await _onlinePlayerRepository.AddUpdateOnlinePlayers(user);
                return true;
            }
            catch (Exception _)
            {
                return false;
            }
        }


        public async Task<List<IPlayer>> GetOnlinePlayer()
        {
            var onlinePlayer = await _onlinePlayerRepository.GetOnlinePlayers();
            return onlinePlayer;
        }
        public async Task<IPlayer> GetPlayer(string userId)
        {
            IPlayer player = await _onlinePlayerRepository.GetPlayer(userId);
            return player;
        }
    }
}