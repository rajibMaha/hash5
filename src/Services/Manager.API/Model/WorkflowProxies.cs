using System.Collections.Generic;

namespace RforU.Manager.API.Model
{
    public class WorkflowProxies
    {
        public List<WorkflowProxy> routes { get; set; }
        public string Baseurl { get; set; }

        public string OAuthEndpoint { get; set; }

    }

    public class WorkflowProxy
    {
        public string eventType { get; set; }
        public List<DispatchRoute> dispatchRoutes { get; set; }

    }

    public class DispatchRoute
    {
        public string URL { get; set; }
        public string Method { get; set; }
        public bool IsAsync { get; set; }
        public dynamic data { get; set; }
    }
}