using RforU.GameManager.API.Interfaces;

namespace RforU.GameManager.API.Interfaces
{
    internal interface ICurrentGameDetails
    {
        IGame CurrentGame { get; set; }
      
    }
}