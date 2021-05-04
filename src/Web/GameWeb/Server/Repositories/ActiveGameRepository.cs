using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using RforU.DistributedPackage.Repositories;
using RforU.Interfaces;
using RforU.Models;

namespace RforU.Repositories
{
    public class ActiveGameRepository: CloudStorageTableRepository<List<IGame>>, IActiveGameRepository
    {
        //TODO: query Azure Storage "OnlineGames" Table
        public List<IGame> GetActiveGames()
        {

            var activeGame = new List<IGame>()
            {
                new Game()
                {
                    GameId = Guid.NewGuid().ToString(), Players = new List<IPlayer>()
                    {
                        new Player() {Name = "Player10", Online = true, PlayerId = Guid.NewGuid().ToString()},
                        new Player() {Name = "Player210", Online = true, PlayerId =  Guid.NewGuid().ToString()},
                        new Player() {Name = "Player310", Online = true, PlayerId =  Guid.NewGuid().ToString()},
                        new Player() {Name = "Player410", Online = true, PlayerId =  Guid.NewGuid().ToString()}

                    },
                    Active = true
                },

                new Game()
                {
                    GameId = Guid.NewGuid().ToString(), Players = new List<IPlayer>()
                    {
                        new Player() {Name = "Player100", Online = true, PlayerId =  Guid.NewGuid().ToString()},
                        new Player() {Name = "Player2100", Online = true, PlayerId =  Guid.NewGuid().ToString()},
                        new Player() {Name = "Player3100", Online = true, PlayerId =  Guid.NewGuid().ToString()},
                        new Player() {Name = "Player4100", Online = true, PlayerId =  Guid.NewGuid().ToString()}

                    },
                    Active = true
                },

                new Game()
                {
                    GameId = Guid.NewGuid().ToString(), Players = new List<IPlayer>()
                    {
                        new Player() {Name = "Player100", Online = true, PlayerId =  Guid.NewGuid().ToString()},
                        new Player() {Name = "Player2100", Online = true, PlayerId =  Guid.NewGuid().ToString()},
                        new Player() {Name = "Player3100", Online = true, PlayerId =  Guid.NewGuid().ToString()},
                        new Player() {Name = "Player4100", Online = true, PlayerId =  Guid.NewGuid().ToString()}

                    },
                    Active = true
                },
            };

            return activeGame;
        }
    }

}
