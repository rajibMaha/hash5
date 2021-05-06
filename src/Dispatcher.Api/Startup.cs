using EventProxy;
using Microsoft.Azure.Functions.Extensions.DependencyInjection;
using Microsoft.Extensions.Configuration;
[assembly: FunctionsStartup(typeof(Startup))]
namespace EventProxy
{
    public class Startup : FunctionsStartup
    {
        private IConfiguration configuration;
        public override void Configure(IFunctionsHostBuilder builder)
        {
            this.configuration = new ConfigurationBuilder()
                .AddEnvironmentVariables()
                .AddJsonFile("WorkflowProxy.json")
                .Build();


        }
    }
}
