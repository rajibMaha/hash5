#region

using RforU.DistributedPackage.Interfaces;
using System.Collections.Generic;
using System.Threading.Tasks;

#endregion

namespace RforU.Interfaces
{
    public interface IActiveGameRepository : IRepository<List<IGame>>
    {
        Task<List<IGame>> GetActiveGames(string playerId);
    }
}