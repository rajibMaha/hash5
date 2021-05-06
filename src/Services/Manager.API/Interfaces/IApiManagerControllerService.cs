using Newtonsoft.Json.Linq;
using System.Threading.Tasks;

namespace RforU.Manager.API.Interfaces
{
    public interface IApiManagerControllerService
    {
        Task HandleEvents(JObject eventData, string eventType);
    }
}