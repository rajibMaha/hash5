using System.Collections.Generic;
using System.Threading.Tasks;

namespace RforU.GameManager.API.Interfaces
{
    public interface IArchivedGameRepository
    {
        Task<List<IGame>> GetArchivedGames(string playerId);
        Task Archive(IGame completedGame);
    }
}