#region

using System.Collections.Generic;
using System.Threading.Tasks;
using RforU.DistributedPackage.Interfaces;

#endregion

namespace RforU.Interfaces
{
    public interface IActiveGameRepository : IRepository<List<IGame>>
    {
        Task<List<IGame>> GetActiveGames(string playerId);
    }
}