#region

using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using RforU.DistributedPackage.Repositories;
using RforU.Interfaces;
using RforU.Models;

#endregion

namespace RforU.Repositories
{
    public class StagedGameRepository : CloudStorageTableRepository<List<IGame>>, IStagedGameRepository
    {
        //TODO: query Azure Storage "OnlineGames" Table
       
        public Task<List<IGame>> GetStagedGames(string playerId)
        {
            // this will goes in storage Table TableQuery
            var userStagedGame =
                DummyStagedGameData.StagedGame.Where(g => g.OpponentId == playerId || g.PrimaryPlayerId == playerId).ToList();

            return Task.FromResult<List<IGame>>(userStagedGame);
        }
    }

    static class DummyStagedGameData
    {
        public static List<IGame>  StagedGame = new List<IGame>
        {
            new Game
            {
                GameId = "AAAA-001",//Guid.NewGuid().ToString(),
                PrimaryPlayerId = "Player1",
                OpponentId = "Player100",
                Active = true
            },
            new Game
            {
                GameId = "AAAA-002",//Guid.NewGuid().ToString(),
                PrimaryPlayerId = "Player2",
                OpponentId = "Player100",
                Active = true
            },
            new Game
            {
                GameId = "AAAA-003",//Guid.NewGuid().ToString(),
                PrimaryPlayerId = "Player3",
                OpponentId = "Player4",
                Active = true
            }
        };

    }
}