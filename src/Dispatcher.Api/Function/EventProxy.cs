using Microsoft.Azure.EventGrid.Models;
using Microsoft.Azure.WebJobs;
using Microsoft.Azure.WebJobs.Extensions.EventGrid;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Logging;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using RestSharp;
using System;
using System.Threading.Tasks;

namespace RforU
{
    public class Dispatcher
    {
        private readonly IConfiguration _config;


        // azure recently added initialization of functions 
        private string ApiManagerUrl;
        private string OAuthEndpoint;
        public Dispatcher(IConfiguration config)
        {
            _config = config;
            var ApiManagerUrl = System.Environment.GetEnvironmentVariable("ApiManagerUrl", EnvironmentVariableTarget.Process);
            var OAuthEndpoint = System.Environment.GetEnvironmentVariable("OAuthEndpoint", EnvironmentVariableTarget.Process);



        }
        [FunctionName("EventProxy")]
        public async Task Run([EventGridTrigger] EventGridEvent eventGridEvent, ILogger log)
        {
            log.LogInformation(eventGridEvent.Data.ToString());


            var jobjectData = eventGridEvent.Data as JObject;

            await workDispatchRoute(jobjectData, eventGridEvent.EventType);

        }


        RestClient client = null;
        private async Task<IRestResponse> workDispatchRoute(JObject payload, string EventType)
        {
            IRestResponse response = null;


            client ??= new RestClient(ApiManagerUrl);
            RestRequest request = new RestRequest(Method.POST);

            string bearerToken = await getBearerToken();
            request.AddHeader("authorization", bearerToken);

            request.AddHeader("cache-controller", "no-cache");
            request.AddHeader("Content-Type", "application/json");
            request.AddHeader("Accept", "application/json");

            var datastr = JsonConvert.SerializeObject(payload);
            request.AddJsonBody(datastr);


            var responce = await client.ExecuteAsync(request);


            return responce;


        }
        RestClient OAuthClient = null;
        private async Task<string> getBearerToken()
        {
            OAuthClient ??= new RestClient(OAuthEndpoint);
            string clientID = Environment.GetEnvironmentVariable("clientID", EnvironmentVariableTarget.Process);
            string clientSecret = Environment.GetEnvironmentVariable("clientSecret", EnvironmentVariableTarget.Process);

            RestRequest request = new RestRequest(Method.POST);
            request.AddHeader("Content-Type", "application/x-www-form-urlencoded");
            request.AddHeader("Accept", "application/json");
            request.AddParameter("grant_type", "client_credentials");

            request.AddParameter("client_id", clientID);
            request.AddParameter("client_serect", clientSecret);


            IRestResponse responce = await OAuthClient.ExecuteAsync(request);
            dynamic resp = JObject.Parse(responce.Content);
            var token = resp.access_token;

            return $"Bearer {token}";


        }

    }
}
