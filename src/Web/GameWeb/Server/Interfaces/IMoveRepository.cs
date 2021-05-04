using System.Collections.Generic;

namespace RforU.Interfaces
{
    public interface IMoveRepository
    {
        List<IMove> Moves { get; set; }
        List<IMove> Get();
    }
}
