using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using RforU.DistributedPackage.Interfaces;
using RforU.Interfaces;

namespace RforU.Interfaces
{
    public interface IOnlinePlayerRepository : IRepository<List<IPlayer>>
    {
        List<IPlayer> GetOnlinePlayers();
    }
}
