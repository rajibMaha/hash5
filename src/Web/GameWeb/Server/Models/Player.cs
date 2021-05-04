using System;
using RforU.Enums;
using RforU.Interfaces;

namespace RforU.Models
{
    internal class Player : IPlayer
    {

        public string PlayerId { get; set; } // to hold alphanumeric
        public string Name { get; set; }
        public bool Online { get; set; }
        public bool Available { get; set; }
        public DateTime OnlineSince { get; set; }
        public PlayerType TypeOfPlayer { get; set; }
        public void InitPlayer(string playerId)
        {
            PlayerId = playerId;
        }
    }
}
