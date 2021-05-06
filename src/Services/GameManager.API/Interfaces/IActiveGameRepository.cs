#region

using RforU.DistributedPackage.Interfaces;
using System.Collections.Generic;
using System.Threading.Tasks;

#endregion

namespace RforU.GameManager.API.Interfaces
{
    public interface IActiveGameRepository : IRepository<List<IGame>>
    {
        Task<List<IGame>> GetActiveGames(string playerId);
    }
}