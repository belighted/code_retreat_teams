import React from 'react';
import ReactDOM from "react-dom/client";
import App from "./App";
import {
    BrowserRouter,
    Routes,
    Route,
  } from "react-router-dom";
import NewParticipation from './pages/participation/new.jsx';
import NewSession from './pages/session/new.jsx';
import ShowSession from './pages/session/show.jsx';

const root = ReactDOM.createRoot(
  document.getElementById("root")
);
root.render(
    <BrowserRouter>
      <Routes>
        <Route path="/" element={<App />} />
        <Route path="new-session" element={<NewSession />} />
        <Route path="new-participation" element={<NewParticipation />} />
        <Route path="show-session" element={<ShowSession />} />
      </Routes>
    </BrowserRouter>
  );