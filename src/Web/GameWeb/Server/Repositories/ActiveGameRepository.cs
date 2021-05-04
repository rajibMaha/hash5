using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using RforU.DistributedPackage.Repositories;
using RforU.Interfaces;
using RforU.Models;

namespace RforU.Repositories
{
    public class ActiveGameRepository : CloudStorageTableRepository<List<IGame>>, IActiveGameRepository
    {
        //TODO: query Azure Storage "OnlineGames" Table
        public Task<List<IGame>> GetActiveGames()
        {

            var activeGame = new List<IGame>
            {
                new Game
                {
                    GameId = Guid.NewGuid().ToString(),
                    PrimaryPlayerId = "Player1",
                    OpponentId = "Player100",
                    PrimaryPlayerMove = "Rock",
                    Active = true,
                },
                new Game
                {
                    GameId = Guid.NewGuid().ToString(),
                    PrimaryPlayerId = "Player2",
                    OpponentId = "Player100",
                    Active = true,
                },
                new Game
                {
                GameId = Guid.NewGuid().ToString(),
                PrimaryPlayerId ="Player3",
                OpponentId = "Player1",
                PrimaryPlayerMove = "Paper",
                Active = true,
                }
            };

            return Task.FromResult<List<IGame>>(activeGame);
        }
    }

}
