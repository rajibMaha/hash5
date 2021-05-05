#region

using System.Threading.Tasks;
using RforU.Models;

#endregion

namespace RforU.Interfaces
{
    public interface IGameControllerService
    {
        Task<IGameData> GetInitialData(string userId);
        Task<bool> AddCurrent(IPlayer user);
        Task<IPlayer> GetPlayer(string userId);
        Task<bool> RegisterMove(GameDetails gameDetails);
    }
}