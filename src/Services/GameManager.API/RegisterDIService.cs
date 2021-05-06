#region

using Microsoft.Extensions.DependencyInjection;
using RforU.GameManager.API.Interfaces;
using RforU.GameManager.API.Repositories;
using RforU.GameManager.API.Interfaces;
using RforU.GameManager.API.Models;
using RforU.GameManager.API.Repositories;

#endregion

namespace GameManager.API
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
            service.AddScoped<IActiveGameRepository, ActiveGameRepository>();
            service.AddScoped<IStagedGameRepository, StagedGameRepository>();

            //transit 
            

          
        }
    }
}