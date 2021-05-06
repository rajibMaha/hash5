using Azure;
using Azure.Messaging;
using Azure.Messaging.EventGrid;
using Common.Configuration;
using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;
using System.Text.Json;

namespace Common.Events
{
    public interface IEventHubCoustomEventService
    {
        void createPayload(dynamic data, ref List<CloudEvent> payload, string eventType , string subject = "DefaultEventSubject");
        void PublishEventAsync(List<CloudEvent> payload, string topic ="DefalutTopic");
    }

    public class EventHubCustomEventService : IEventHubCoustomEventService
    {
    
        private readonly string _eventHubDomainUrl;
        private readonly string _eventHubAccesskey;

        public EventHubCustomEventService(IConfiguration config)
        {
           
            _eventHubDomainUrl = config.GetSection("EventHubDomainUrl").Value.ToString(); 
            
            _eventHubDomainUrl = config.GetSection("EventHubDomainUrl").Value.ToString();
            _eventHubAccesskey = config["EventHubAccesskey"];
        }

        public void createPayload(dynamic data, ref List<CloudEvent> payload, string eventType , string subject = "DefaultEventSubject")
        {
            payload ??= new List<CloudEvent>();
            CloudEvent cloudEvent = new CloudEvent(
                source: $"{subject}{Guid.NewGuid().ToString()}", // ID and Source must be unique
                type: eventType,
                jsonSerializableData: JsonSerializer.Serialize<dynamic>(data)
            )
            {
                Subject = subject,
            };
            payload.Add(cloudEvent);
        }

        public void PublishEventAsync(List<CloudEvent> payload, string topic ="DefalutTopic")
        {
            EventGridPublisherClient client = new EventGridPublisherClient(
                new Uri($"{_eventHubDomainUrl}/{topic}"),
                new AzureKeyCredential(_eventHubAccesskey));

            client.SendEventsAsync(payload);
        }

    }
}