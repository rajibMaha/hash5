namespace RforU.Interfaces
{
    public interface IMoveResult
    {
        bool Win { get; set; }

        string Message { get; set; }
    }
}