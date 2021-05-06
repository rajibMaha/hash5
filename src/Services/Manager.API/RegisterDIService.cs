#region

using Microsoft.Extensions.DependencyInjection;
using RforU.Manager.API.Interfaces;
using RforU.Manager.API.Interfaces;
using RforU.Manager.API.Interfaces;
using RforU.Manager.API.Services;

#endregion

namespace RforU.Manager.API
{
    public class RegisterDIService
    {
        protected RegisterDIService()
        {
        }


        internal static void Register(ref IServiceCollection service)
        {
            //singleton 
          
            // scoped
            service.AddScoped<IApiManagerControllerService, ApiManagerControllerService>();
         
            //transit 
            

          
        }
    }
}