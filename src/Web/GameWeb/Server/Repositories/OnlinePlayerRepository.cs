using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using RforU.DistributedPackage.Repositories;
using RforU.Interfaces;
using RforU.Models;

namespace RforU.Repositories
{
    public class OnlinePlayerRepository : CloudStorageTableRepository<List<IPlayer>>, IOnlinePlayerRepository
    {

        //TODO: query Azure Storage "OnlinePlayer" Table
        public Task<List<IPlayer>> GetOnlinePlayers()
        {

            //qs > Online = true && Available = true && TypeOfPlayer =PlayerType.Human && OnlineSince > new DateTime().AddDays(-1)
            var onlinePlayer = new List<IPlayer>()
            {
                new Player {Name = "Player1",  PlayerId =  "Player1" ,OnlineSince = DateTime.Now.AddHours(-1)},
                new Player {Name = "Player21", PlayerId = "Player21",OnlineSince = DateTime.Now.AddHours(-1)},
                new Player {Name = "Player31", PlayerId =   "Player31",OnlineSince = DateTime.Now.AddHours(-1)},
                new Player {Name = "Player41", PlayerId =  "Player41",OnlineSince = DateTime.Now.AddHours(-1)}
            };

            return Task.FromResult<List<IPlayer>>(onlinePlayer);
        }
    }

}
