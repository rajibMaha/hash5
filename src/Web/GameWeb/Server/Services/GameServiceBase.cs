using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using RforU.Interfaces;

namespace RforU.Server.Services
{
    public class GameServiceBase
    {
        protected readonly IActiveGameRepository activeGameRepository;
        protected readonly IOnlinePlayerRepository onlinePlayerRepository;

        public GameServiceBase(
            
            IActiveGameRepository activeGameRepository ,
            IOnlinePlayerRepository onlinePlayerRepository
            )
        {
            this.activeGameRepository = activeGameRepository;
            this.onlinePlayerRepository = onlinePlayerRepository;
        }
    }
}
