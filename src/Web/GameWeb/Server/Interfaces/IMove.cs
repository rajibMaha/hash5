#region

using System.Collections.Generic;

#endregion

namespace RforU.Interfaces
{
    public interface IMove
    {
        string Name { get; set; }
        int Id { get; set; }
        List<string> Beats { get; set; }
    }
}