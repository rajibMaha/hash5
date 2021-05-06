#region

using Microsoft.Extensions.DependencyInjection;
using RforU.Interfaces;
using RforU.Models;
using RforU.PlayerManager.API.Interfaces;
using RforU.PlayerManager.API.Repositories;
using RforU.PlayerManager.API.Services;
using RforU.Repositories;
using RforU.Services;

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