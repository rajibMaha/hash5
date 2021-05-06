#region

using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Azure.Messaging;
using Common.Events;
using RforU.GameManager.API.Interfaces;
using RforU.GameManager.API.Models;

#endregion

namespace GameManager.API.Services
{
    internal class GameControllerService : IGameControllerService
    {
        private readonly IActiveGameRepository _activeGameRepository;
        private readonly IEventHubCoustomEventService _eventHubCoustomEventService;
        private readonly IStagedGameRepository _stagedGameRepository;


        //TODO: move all this code to service Game service is only entity that will talk to Repository
        public GameControllerService(
            IActiveGameRepository activeGameRepository,
            IStagedGameRepository stagedGameRepository,
            IEventHubCoustomEventService eventHubCoustomEventService
        )
        {
            ActiveGameRepository = activeGameRepository;
            _stagedGameRepository = stagedGameRepository;
            _eventHubCoustomEventService = eventHubCoustomEventService;
        }

        public IActiveGameRepository ActiveGameRepository { get; }

        /// <summary>
        ///     return the list of Online player and
        /// </summary>
        /// <param name="userId"> ID of user</param>
        /// <returns></returns>
        public async Task<IGameData> GetInitialData(string playerId)
        {
            var activeGames = await GetActiveGames(playerId);
            var stagedGames = await GeStagedGames(playerId);

            var initData = new GameData
            {
                ActiveGames = activeGames,
                StagedGames = stagedGames
            };
            return initData;
        }

        public Task<bool> GameSubmitted(IGame gameDetails)
        {
            //var List<>
            var eventpayload = new List<CloudEvent>();
            _eventHubCoustomEventService.createPayload(gameDetails, ref eventpayload, "RforU.Events.Game.Submitted");
            _eventHubCoustomEventService.PublishEventAsync(eventpayload, "EventGridTopicManagement");


            return Task.FromResult(false);
        }

        public Task<bool> OnlineStatusUpdate(IGame currentGame)
        {
            return Task.FromResult(false);
        }

        public Task<bool> UpdateGame(IGame currentGame)
        {
            return Task.FromResult(false);
        }

        public Task<bool> MoveToArchive(IGame currentGame)
        {
            return Task.FromResult(false);
        }


        internal async Task<List<IGame>> GetActiveGames(string playerId)
        {
            var activeGame = await _activeGameRepository.GetActiveGames(playerId);
            // can not hack developer tool to see the OpponentMove  value 
            return activeGame.Where(g => string.IsNullOrEmpty(g.OpponentMove)).ToList();
        }

        internal async Task<List<IGame>> GeStagedGames(string playerId)
        {
            var onlinePlayer = await _stagedGameRepository.GetStagedGames(playerId);
            return onlinePlayer;
        }
    }
}