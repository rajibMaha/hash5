#region

using RforU.GameManager.API.Interfaces;

#endregion

namespace RforU.GameManager.API.Models
{
    internal class CurrentGameDetails : ICurrentGameDetails
    {
        public IGame CurrentGame { get; set; }
    }
}