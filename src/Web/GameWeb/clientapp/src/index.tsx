import React from 'react';
import ReactDOM from 'react-dom';
import './styles/index.css';
import App from './app/App';
import reportWebVitals from './reportWebVitals';



ReactDOM.render(
  <React.StrictMode>
    <App />
  </React.StrictMode>,
  document.getElementById('root')
);

//Sending results to analytics
//https://create-react-app.dev/docs/measuring-performance/

function sendToAnalytics(metric:any ) {
  const body = JSON.stringify(metric);
  const url = 'https://example.com/analytics';

  // Use `navigator.sendBeacon()` if available, falling back to `fetch()`
  if (navigator.sendBeacon) {
    navigator.sendBeacon(url, body);
  } else {
    fetch(url, { body, method: 'POST', keepalive: true });
  }
}
reportWebVitals(sendToAnalytics);
