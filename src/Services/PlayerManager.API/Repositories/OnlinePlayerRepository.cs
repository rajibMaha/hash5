﻿#region

using RforU.DistributedPackage.Repositories;
using RforU.PlayerManager.API.Interfaces;
using RforU.PlayerManager.API.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

#endregion

namespace RforU.PlayerManager.API.Repositories
{
    public class OnlinePlayerRepository : CloudStorageTableRepository<List<IPlayer>>, IOnlinePlayerRepository
    {
        //TODO: query Azure Storage "Players" Table
        public Task<List<IPlayer>> GetOnlinePlayers()
        {
            //qs > Online = true && Available = true && TypeOfPlayer =PlayerType.Human && OnlineSince > new DateTime().AddDays(-1)


            return Task.FromResult<List<IPlayer>>(DummyOnlinePlayerData.OnlinePlayer);
        }

        public async Task<bool> AddUpdateOnlinePlayers(IPlayer player)
        {
            await base.Add(new List<IPlayer> { player });
            if (DummyOnlinePlayerData.OnlinePlayer.Any(p => p.PlayerId == player.PlayerId))
            {
                _ = DummyOnlinePlayerData.OnlinePlayer.Where(p => p.PlayerId == player.PlayerId)
                    .All(x =>
                    {
                        x.Available = true;
                        x.Online = true;
                        x.TypeOfPlayer = player.TypeOfPlayer;
                        x.OnlineSince = player.OnlineSince;
                        return true;
                    });
                return true;
            }

            DummyOnlinePlayerData.OnlinePlayer.Add(player);
            return true;
        }

        public Task<IPlayer> GetPlayer(string playerId)
        {
            // var player = await base.Get(userId);

            var player = DummyOnlinePlayerData.OnlinePlayer.FirstOrDefault(p => p.PlayerId == playerId);
            return Task.FromResult<IPlayer>(player);
        }
    }

    internal class DummyOnlinePlayerData
    {
        protected DummyOnlinePlayerData()
        {
        }

        public static List<IPlayer> OnlinePlayer =
            new List<IPlayer>
            {
                new Player {Name = "Player1", PlayerId = "Player1", OnlineSince = DateTime.Now.AddHours(-1)},
                new Player {Name = "Player21", PlayerId = "Player21", OnlineSince = DateTime.Now.AddHours(-1)},
                new Player {Name = "Player31", PlayerId = "Player31", OnlineSince = DateTime.Now.AddHours(-1)},
                new Player {Name = "Player41", PlayerId = "Player41", OnlineSince = DateTime.Now.AddHours(-1)}
            };
    }
}