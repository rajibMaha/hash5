#region

using RforU.DistributedPackage.Interfaces;
using System.Collections.Generic;
using System.Threading.Tasks;

#endregion

namespace RforU.PlayerManager.API.Interfaces
{
    public interface IOnlinePlayerRepository : IRepository<List<IPlayer>>
    {
        Task<List<IPlayer>> GetOnlinePlayers();
        Task<bool> AddUpdateOnlinePlayers(IPlayer player);

        Task<IPlayer> GetPlayer(string userId);
    }
}