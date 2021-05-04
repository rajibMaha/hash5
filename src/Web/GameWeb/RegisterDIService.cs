using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.Extensions.DependencyInjection;
using RforU.Interfaces;
using RforU.Models;
using RforU.Repositories;
using RforU.Services;

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

            //transit 
            service.AddTransient<IGame, Game>();
            service.AddTransient<IGameControllerService, GameControllerService>();
            service.AddTransient<IGameService, GameService>();
            service.AddTransient<IInitialData, InitialData>();
            service.AddTransient<IMove, Move>();
            service.AddTransient<IInitialData, InitialData>();
            service.AddTransient<IMoveResult, MoveResult>();
            service.AddTransient<IPlayer, Player>();


        }
    }
}
