import React from 'react';
import ReactDOM from 'react-dom';
import { BrowserRouter as Router } from 'react-router-dom';

import '../index.css'

import { Routes } from '../routes/routes';

// # MAIN
ReactDOM.render(
  <Provider>
    <Router>
      <Routes/>
    </Router>
  </Provider>,
  document.getElementById('root')
);