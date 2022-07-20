import React from 'react';
import { Link } from "react-router-dom";

export default function App() {
  return (
    <div>
      <h1>Bookkeeper</h1>
      <nav
        style={{
          borderBottom: "solid 1px",
          paddingBottom: "1rem",
        }}
      >
        <Link to="/new-session">Session</Link> |{" "}
        <Link to="/new-participation">Participation</Link>
      </nav>
    </div>
  );
}