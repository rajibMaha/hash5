#region

using System.Collections.Generic;
using System.Threading.Tasks;
using RforU.DistributedPackage.Interfaces;

#endregion

namespace RforU.Interfaces
{
    public interface IOnlinePlayerRepository : IRepository<List<IPlayer>>
    {
        Task<List<IPlayer>> GetOnlinePlayers();
        Task<bool> AddUpdateOnlinePlayers(IPlayer player);

        Task<IPlayer> GetPlayer(string userId);
    }
}