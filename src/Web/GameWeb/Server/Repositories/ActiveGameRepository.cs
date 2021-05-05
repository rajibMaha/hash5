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
    public class ActiveGameRepository : CloudStorageTableRepository<List<IGame>>, IActiveGameRepository
    {

       
        //TODO: query Azure Storage "OnlineGames" Table
        public Task<List<IGame>> GetActiveGames(string PlayerId)
        {
            // this will goes in storage Table TableQuery
            var userActivedGame =
                DummyActiveGameData.ActiveGame.Where(g => g.OpponentId == PlayerId || g.PrimaryPlayerId == PlayerId).ToList();
            return Task.FromResult<List<IGame>>(userActivedGame);
        }
    }


     static class DummyActiveGameData
    {
       public static List<IGame> ActiveGame = new List<IGame>
        {
            new Game
            {
                GameId = "AAAA-01",//Guid.NewGuid().ToString(),
                PrimaryPlayerId = "Player1",
                OpponentId = "",
                PrimaryPlayerMove = "Rock",
                Active = true
            },
            new Game
            {
                GameId = "AAAA-02",//Guid.NewGuid().ToString(),
                PrimaryPlayerId = "Player2",
                OpponentId = "Player100",
                Active = true
            },
            new Game
            {
                GameId = "AAAA-03",//Guid.NewGuid().ToString(),
                PrimaryPlayerId = "Player3",
                OpponentId = "Player1",
                PrimaryPlayerMove = "Paper",
                Active = true
            }
        };
    }
}