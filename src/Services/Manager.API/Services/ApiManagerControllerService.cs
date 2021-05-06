using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.Extensions.Configuration;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using RestSharp;
using RforU.Manager.API.Interfaces;
using RforU.Manager.API.Model;

namespace RforU.Manager.API.Services
{
    public class ApiManagerControllerService : IApiManagerControllerService
    {
        private readonly WorkflowProxies _workflowProxies;

        public ApiManagerControllerService(IConfiguration config)
        {
            _workflowProxies = config.Get<WorkflowProxies>();

        }
        public async Task HandleEvents(JObject eventData , string eventType)
        {

            IEnumerable<WorkflowProxy> workflowProxies = _workflowProxies.routes.Where(r => string.Equals(r.eventType, eventType));
            await SentEvents(workflowProxies, eventData);
        }

        private async Task SentEvents(IEnumerable<WorkflowProxy> workflowProxies, JObject eventData)
        {
            foreach (var workflowProxy in workflowProxies)
            {
                WorkWorkflowProxy(workflowProxy, eventData);

            }
        }

        private async Task WorkWorkflowProxy(WorkflowProxy workflowProxy, JObject eventData)
        {
            

                foreach (var dispatchRoute in workflowProxy.dispatchRoutes)
                {
                    await workDispatchRoute(dispatchRoute, eventData);

                }
           

        }

        RestClient client = null;
        private async Task<IRestResponse> workDispatchRoute(DispatchRoute dispatchRoute, JObject payload)
        {
            IRestResponse responce = null;
            client = client ?? new RestClient(_workflowProxies.OAuthEndpoint);
            Method method = Method.GET;
            switch (dispatchRoute.Method)
            {
                case "POST":
                    method = Method.POST;
                    break;
                case "GET":
                    method = Method.GET;
                    break;
                default:
                    break;
            }

            RestRequest request = new RestRequest(method);

            string bearerToken = await getBearerToken();
            request.AddHeader("authorization", bearerToken);

            request.AddHeader("cache-controller", "no-cache");
            request.AddHeader("Content-Type", "application/json");
            request.AddHeader("Accept", "application/json");

            var datastr = JsonConvert.SerializeObject(payload);
            request.AddJsonBody(datastr);
            if (dispatchRoute.IsAsync)
            {
                client.ExecuteAsync(request);
                return await Task.FromResult<IRestResponse>(null);
            }
            else
            {
                responce = await client.ExecuteAsync(request);
            }

            return responce;


        }
        RestClient OAuthClient = null;
        private async Task<string> getBearerToken()
        {
            OAuthClient = OAuthClient ?? new RestClient(_workflowProxies.OAuthEndpoint);
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
