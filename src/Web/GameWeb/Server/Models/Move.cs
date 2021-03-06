#region

using System.Collections.Generic;
using RforU.Interfaces;

#endregion

namespace RforU.Models
{
    public class Move : IMove
    {
        public Move()
        {
            Beats = new List<string>();
        }

        public string Name { get; set; }
        public int Id { get; set; }

        public List<string> Beats { get; set; }
    }
}