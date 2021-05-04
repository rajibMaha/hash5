﻿using System;
using System.Collections.Generic;
using RforU.Interfaces;
using RforU.Models;
namespace RforU.Server.Services
{
    internal abstract class GameMoveBase
    {
        protected GameMoveBase()
        {
            Moves = new List<IMove>()
            {
                new Move() {Name = "Rock", Id = 10, Beats = new List<string>() {"Scissors"}},
                new Move() {Name = "Scissors", Id = 10, Beats = new List<string>() {"Paper"}},
                new Move() {Name = "Paper", Id = 10, Beats = new List<string>() {"Rock"}}
            };
        }

        public List<IMove> Moves { get; set; }

       
    }
}
