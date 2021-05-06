using Common.Events;
using Microsoft.Extensions.DependencyInjection;


namespace RforU.DistributedPackage.MiddleWare
{
    public class RegisterServices
    {
        public static void Register(ref IServiceCollection service)
        {
            //singleton 

            // scoped

            //transit 
            service.AddScoped<IEventHubCoustomEventService, EventHubCustomEventService>();
        }
    }


}
