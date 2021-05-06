using System.Collections.Generic;
using Common.Events;
using Microsoft.Extensions.DependencyInjection;
using RforU.DistributedPackage.Interfaces;
using RforU.DistributedPackage.Repositories;


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
