using System.Collections.Generic;
using System.Threading.Tasks;
using RforU.PlayerManager.API.Interfaces;

namespace RforU.PlayerManager.API.Interfaces
{
    public interface IPlayerControllerService
    {
        /// <summary>
        /// return the list of Online player and 
        /// </summary>
        /// <param name="userId"> ID of user</param>
        /// <returns></returns>
        Task<List<IPlayer>> GetInitialData(string playerId);

        Task<bool> AddCurrent(IPlayer user);
        Task<List<IPlayer>> GetOnlinePlayer();
        Task<IPlayer> GetPlayer(string playerId);
    }
}