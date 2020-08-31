import React from "react";
import logo from "./logo.svg";
import "./App.css";

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <p>Hi! Welcome to React CI/CD!</p>
        <p>
          (This React App is deployed on AWS Elasticbeanstalk using Travis-CI +
          Docker)
        </p>
      </header>
    </div>
  );
}

export default App;
