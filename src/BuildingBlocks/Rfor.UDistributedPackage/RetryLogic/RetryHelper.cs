using System;
using System.Threading.Tasks;
using Microsoft.Extensions.Logging;

namespace RforU.DistributedPackage.RetryLogic
{
    public class RetryHelper
    {
        protected RetryHelper()
        {
        }

        public static void ExecuteWithRetry<T>(ILogger<T> logger, int NoOfRetry, Action operation)
        {
            var attempt = 0;

            do
            {
                try
                {
                    attempt++;
                    operation.Invoke();
                    break;
                }
                catch (System.Exception ex)
                {
                    if (attempt == NoOfRetry) throw;
                    if (logger != null)
                        logger.LogError($"Error Occurred. Retrying for {attempt} Time. Error Details: {ex.Message}");

                    Task.Delay(TimeSpan.FromSeconds(Math.Pow(300, attempt))).Wait();
                }
            } while (true);
        }
    }
}