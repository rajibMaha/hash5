#region

using System.Threading.Tasks;

#endregion

namespace RforU.GameManager.API.Interfaces
{
    public interface IGameControllerService
    {
        Task<IGameData> GetInitialData(string playerId);
        Task<bool> GameSubmitted(IGame gameDetails);

        Task<bool> OnlineStatusUpdate(IGame currentGame);
        Task<bool> UpdateGame(IGame currentGame);
        Task<bool> MoveToArchive(IGame currentGame);
    }
}