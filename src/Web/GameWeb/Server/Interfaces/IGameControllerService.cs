using System.Threading.Tasks;

namespace RforU.Interfaces
{
    public interface IGameControllerService
    {
        Task<IInitialData> GetInitialData(string userId);
    }
}
