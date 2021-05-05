#region

using System.Collections.Generic;

#endregion

namespace RforU.Interfaces
{
    public interface IMoveRepository
    {
        List<IMove> Moves { get; set; }
        List<IMove> Get();
    }
}