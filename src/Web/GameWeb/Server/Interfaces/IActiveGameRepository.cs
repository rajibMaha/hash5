using System.Collections.Generic;
using System.Threading.Tasks;
using RforU.DistributedPackage.Interfaces;

namespace RforU.Interfaces
{

    public interface IActiveGameRepository : IRepository<List<IGame>>
    {
        Task<List<IGame>> GetActiveGames();

    }
}
