#region

using System.Collections.Generic;

#endregion

namespace RforU.Repositories
{
    public class MoveRepository : IMoveRepository
    {
        public MoveRepository()
        {
            Moves = new List<IMove>
            {
                new Move {Name = "Rock", Id = 10, Beats = new List<string> {"Scissors"}},
                new Move {Name = "Scissors", Id = 10, Beats = new List<string> {"Paper"}},
                new Move {Name = "Paper", Id = 10, Beats = new List<string> {"Rock"}}
            };
        }

        public List<IMove> Moves { get; set; }

        public List<IMove> Get()
        {
            return Moves;
        }
    }

    public class Move : IMove
    {
        public string Name { get; set; }
        public int Id { get; set; }
        public List<string> Beats { get; set; }
    }

    public interface IMove
    {
    }

    public interface IMoveRepository
    {
    }
}