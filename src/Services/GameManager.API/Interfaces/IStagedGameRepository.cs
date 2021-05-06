#region

using System.Collections.Generic;
using System.Threading.Tasks;
using RforU.DistributedPackage.Interfaces;
using RforU.DistributedPackage.Interfaces;

#endregion

namespace RforU.GameManager.API.Interfaces
{
    public interface IStagedGameRepository : IRepository<List<IGame>>
    {
        Task<List<IGame>> GetStagedGames(string playerId);
    }
}