using System;
using System.Collections.Generic;
using System.Text.Json;
using Azure;
using Azure.Messaging;
using Azure.Messaging.EventGrid;
using Microsoft.Extensions.Configuration;

namespace Common.Events
{
    public interface IEventHubCoustomEventService
    {
        void createPayload(dynamic data, ref List<CloudEvent> payload, string eventType,
            string subject = "DefaultEventSubject");

        void PublishEventAsync(List<CloudEvent> payload, string topic = "DefalutTopic");
    }

    public class EventHubCustomEventService : IEventHubCoustomEventService
    {
        private readonly string _eventHubAccesskey;

        private readonly string _eventHubDomainUrl;

        public EventHubCustomEventService(IConfiguration config)
        {
            _eventHubDomainUrl = config.GetSection("EventHubDomainUrl").Value;

            _eventHubDomainUrl = config.GetSection("EventHubDomainUrl").Value;
            _eventHubAccesskey = config["EventHubAccesskey"];
        }

        public void createPayload(dynamic data, ref List<CloudEvent> payload, string eventType,
            string subject = "DefaultEventSubject")
        {
            payload ??= new List<CloudEvent>();
            var cloudEvent = new CloudEvent(
                source: $"{subject}{Guid.NewGuid().ToString()}", // ID and Source must be unique
                type: eventType,
                jsonSerializableData: JsonSerializer.Serialize<dynamic>(data)
            )
            {
                Subject = subject
            };
            payload.Add(cloudEvent);
        }

        public void PublishEventAsync(List<CloudEvent> payload, string topic = "DefalutTopic")
        {
            var client = new EventGridPublisherClient(
                new Uri($"{_eventHubDomainUrl}/{topic}"),
                new AzureKeyCredential(_eventHubAccesskey));

            client.SendEventsAsync(payload);
        }
    }
}