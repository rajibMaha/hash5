using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using RforU.DistributedPackage.Repositories;
using RforU.Interfaces;
using RforU.Interfaces;
using RforU.Models;

namespace RforU.Server.Repositories
{
    public class OnlinePlayerRepository : CloudStorageTableRepository<List<IPlayer>>, IOnlinePlayerRepository
    {
        //TODO: query Azure Storage "OnlinePlayer" Table
        public List<IPlayer> GetOnlinePlayers()
        {
            var onlinePlayer = new List<IPlayer>()
            {
                new Player() {Name = "Player1", Online = true, PlayerId =  Guid.NewGuid().ToString()},
                new Player() {Name = "Player21", Online = true, PlayerId =  Guid.NewGuid().ToString()},
                new Player() {Name = "Player31", Online = true, PlayerId =  Guid.NewGuid().ToString()},
                new Player() {Name = "Player41", Online = true, PlayerId =  Guid.NewGuid().ToString()}
            };

            return onlinePlayer;
        }
    }

}
