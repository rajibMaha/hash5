﻿using RforU.Interfaces;


namespace RforU.Models
{
  

    public class MoveResult : IMoveResult
    {
        public bool Win { get; set; }

        public string Message { get; set; }
    }
}
