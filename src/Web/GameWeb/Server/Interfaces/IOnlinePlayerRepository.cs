using System.Collections.Generic;
using System.Threading.Tasks;
using RforU.DistributedPackage.Interfaces;

namespace RforU.Interfaces
{
    public interface IOnlinePlayerRepository : IRepository<List<IPlayer>>
    {
        Task<List<IPlayer>> GetOnlinePlayers();
    }
}
