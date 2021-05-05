import React from 'react';
import { Route } from 'react-router';
import '../styles/App.css';
import Admin from './components/Admin/Admin';
import Layout from './components/common/Layout';
import Home from './components/Home/Home';
import Login from './components/Login/Login';

const App = () => {
  return (
    <div>
      <Layout></Layout>
      <Route exact path='/' component={Home} />
      <Route exact path='/Login' component={Login} />
      <Route path='/counter' component={Admin} />
      <Route path='/Home' component={Home} />
    </div>
  );
}

export default App;
