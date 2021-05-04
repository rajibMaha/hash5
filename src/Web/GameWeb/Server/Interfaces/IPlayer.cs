using System;
using RforU.Enums;

namespace RforU.Interfaces
{
    public interface IPlayer
    {
        string PlayerId { get;  set; }
        string Name { get; set; }
        bool Online { get; set; }

        bool Available { get; set; }
        public DateTime OnlineSince { get; set; }
        PlayerType TypeOfPlayer { get; set; }
        void InitPlayer(string plyerId);
    }
}