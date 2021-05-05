using System.Collections.Generic;
using System.Threading.Tasks;
using RforU.Interfaces;

namespace RforU.Interfaces
{
    public interface IArchivedGameRepository
    {
        Task<List<IGame>> GetArchivedGames(string playerId);
        Task Archive(IGame completedGame);
    }
}