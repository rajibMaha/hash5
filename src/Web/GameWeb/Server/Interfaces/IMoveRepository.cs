using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace RforU.Interfaces
{
    public interface IMoveRepository
    {
        List<IMove> Moves { get; set; }
        List<IMove> Get();
    }
}
