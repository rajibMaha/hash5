#region

using System;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using RforU.PlayerManager.API.Interfaces;

#endregion

namespace RforU.PlayerManager.API.Models
{
    public class Player : IPlayer
    {
        public string PlayerId { get; set; } // to hold alphanumeric
        public string Name { get; set; }
        public bool Online { get; set; }
        public bool Available { get; set; }
        public DateTime OnlineSince { get; set; }

        [JsonConverter(typeof(StringEnumConverter))]
        public string TypeOfPlayer { get; set; }

        public void InitPlayer(string playerId)
        {
            PlayerId = playerId;
        }
    }
}