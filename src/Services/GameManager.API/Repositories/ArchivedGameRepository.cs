#region

using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using RforU.DistributedPackage.Repositories;
using RforU.GameManager.API.Interfaces;
using RforU.GameManager.API.Models;

#endregion

namespace RforU.GameManager.API.Repositories
{
    public class ArchivedGameRepository : CloudStorageTableRepository<List<IGame>>, IArchivedGameRepository
    {
        //TODO: query Azure Storage "OnlineGames" Table
        public Task<List<IGame>> GetArchivedGames(string playerId)
        {
            var archivedGame =
                DummyArchivedGameData.ArchivedGame.Where(g =>
                    g.OpponentId == playerId || g.PrimaryPlayerId == playerId).ToList();
            return Task.FromResult(archivedGame);
        }

        public Task Archive(IGame completedGame)
        {
            throw new NotImplementedException();
        }
    }

    internal static class DummyArchivedGameData
    {
        public static List<IGame> ArchivedGame = new List<IGame>
        {
            new Game
            {
                GameId = "AAAA-00001", //Guid.NewGuid().ToString(),
                PrimaryPlayerId = "Player1",
                OpponentId = "Player100",
                PrimaryPlayerMove = "Rock",
                Active = true
            },
            new Game
            {
                GameId = "AAAA-02", //Guid.NewGuid().ToString(),
                PrimaryPlayerId = "Player2",
                OpponentId = "Player1",
                Active = true
            },
            new Game
            {
                GameId = "AAAA-03", //Guid.NewGuid().ToString(),
                PrimaryPlayerId = "Player3",
                OpponentId = "Player100",
                PrimaryPlayerMove = "Paper",
                Active = true
            }
        };
    }
}