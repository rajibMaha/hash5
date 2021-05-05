import React from 'react';
import ReactDOM from 'react-dom';
import './styles/index.css';
import App from './app/App';
import reportWebVitals from './reportWebVitals';
import registerServiceWorker from './registerServiceWorker';
import {
  BrowserRouter as Router,
  Switch,
  Route,
  Link
} from "react-router-dom";

const baseUrl = document.getElementsByTagName('base')[0].getAttribute('href');
const rootElement = document.getElementById('root');

ReactDOM.render(
  <React.StrictMode>
    <Router>
      <App />
    </Router>
  </React.StrictMode>,
  document.getElementById('root')
);
registerServiceWorker();

//Sending results to analytics
//https://create-react-app.dev/docs/measuring-performance/

// // function sendToAnalytics(metric: any) {
// //   const body = JSON.stringify(metric);
// //   const url = 'https://example.com/analytics';

// //   // Use `navigator.sendBeacon()` if available, falling back to `fetch()`
// //   if (navigator.sendBeacon) {
// //     navigator.sendBeacon(url, body);
// //   } else {
// //     fetch(url, { body, method: 'POST', keepalive: true });
// //   }
// // }
// // reportWebVitals(sendToAnalytics);
