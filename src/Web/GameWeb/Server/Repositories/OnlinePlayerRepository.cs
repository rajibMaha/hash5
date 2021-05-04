using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using RforU.DistributedPackage.Repositories;
using RforU.Enums;
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

            //qs > Online = true && Available = true && TypeOfPlayer =PlayerType.Human && OnlineSince > new DateTime().AddDays(-1)
            var _onlinePlayer = new List<IPlayer>()
            {
                new Player {Name = "Player1",  PlayerId =  "Player1" ,OnlineSince = new DateTime().AddHours(-1)},
                new Player {Name = "Player21", PlayerId = "Player21",OnlineSince = new DateTime().AddHours(-1)},
                new Player {Name = "Player31", PlayerId =   "Player31",OnlineSince = new DateTime().AddHours(-1)},
                new Player {Name = "Player41", PlayerId =  "Player41",OnlineSince = new DateTime().AddHours(-1)}
            };

            return _onlinePlayer;
        }
    }

}
