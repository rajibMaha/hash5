
namespace RforU.DistributedPackage.Exception
{
    public class RforUErrorCodes
    {
        protected RforUErrorCodes()
        {

        }
        public static ErrorCode GetError(ErrorType errorType)
        {

            //TODO: come up with better names and messages

            return errorType switch
            {
                ErrorType.Application =>
                    new ErrorCode()
                    {
                        Code = -5000,
                        ErrorMessage = "There is something wrong Please try again",
                        ErrorName = "Something Went Wrong"
                    },

                ErrorType.BadRequest =>
                    new ErrorCode()
                    {
                        Code = -5001,
                        ErrorMessage = "There is something wrong in the  payload ",
                        ErrorName = "Malformed payload"
                    },
                ErrorType.Connectivity =>
                    new ErrorCode()
                    {
                        Code = -5002,
                        ErrorMessage = "There is something wrong Looks like a connectivity issue",
                        ErrorName = "Having connectivity Issue"
                    },
                _ =>
                    new ErrorCode()
                    {
                        Code = 5000,
                        ErrorMessage = "There is something wrong Please try again",
                        ErrorName = "Something Went Wrong"
                    }

            };

        }
    }
}
