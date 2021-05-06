#region

using Microsoft.Extensions.DependencyInjection;
using RforU.Interfaces;
using RforU.Repositories;
using RforU.Services;

#endregion

namespace RforU
{
    public class RegisterDIService
    {
        protected RegisterDIService()
        {
        }


        internal static void Register(ref IServiceCollection service)
        {
            //singleton 
            service.AddSingleton<IMoveRepository, MoveRepository>();

            // scoped
            service.AddScoped<IActiveGameRepository, ActiveGameRepository>();
            service.AddScoped<IOnlinePlayerRepository, OnlinePlayerRepository>();
            service.AddScoped<IStagedGameRepository, StagedGameRepository>();

            //transit 
            service.AddTransient<IGameControllerService, GameControllerService>();
            service.AddTransient<IGameService, GameService>();
        }
    }
}