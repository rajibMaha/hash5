#region

using RforU.DistributedPackage.Interfaces;
using System.Collections.Generic;
using System.Threading.Tasks;

#endregion

namespace RforU.Interfaces
{
    public interface IStagedGameRepository : IRepository<List<IGame>>
    {
        Task<List<IGame>> GetStagedGames(string playerId);
    }
}