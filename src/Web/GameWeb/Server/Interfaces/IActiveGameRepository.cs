using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using RforU.DistributedPackage.Repositories;
using RforU.Interfaces;

namespace RforU.Interfaces
{

    public interface IActiveGameRepository : IRepository<List<IGame>>
    {
        List<IGame> GetActiveGames();

    }
}
