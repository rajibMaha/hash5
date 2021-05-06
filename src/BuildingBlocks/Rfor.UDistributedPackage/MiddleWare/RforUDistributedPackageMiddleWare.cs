using Microsoft.AspNetCore.Http;
using System.Threading.Tasks;

namespace RforU.DistributedPackage.MiddleWare
{
    public class RforUDistributedPackageMiddleWare
    {

        private readonly RequestDelegate _next;


        public RforUDistributedPackageMiddleWare(RequestDelegate next)
        {
            _next = next;
        }


        public async Task InvokeAsync(HttpContext context)
        {

            await _next(context);
        }



    }
}
