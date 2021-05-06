using System.Threading.Tasks;
using Newtonsoft.Json.Linq;

namespace RforU.Manager.API.Interfaces
{
    public interface IApiManagerControllerService
    {
        Task HandleEvents(JObject eventData, string eventType);
    }
}