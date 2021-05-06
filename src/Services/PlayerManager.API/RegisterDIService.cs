#region

using Microsoft.Extensions.DependencyInjection;
using RforU.PlayerManager.API.Interfaces;
using RforU.PlayerManager.API.Repositories;
using RforU.PlayerManager.API.Services;

#endregion

namespace RforU.PlayerManager.API
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
            service.AddScoped<IOnlinePlayerRepository, OnlinePlayerRepository>();
            //transit 
            service.AddTransient<IPlayerControllerService, PlayerControllerService>();
        }
    }
}