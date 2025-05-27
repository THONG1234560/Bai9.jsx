import './App.css'
import React, { useState } from "react";
import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import Login from "./components/Login";
import Account from "./components/Account";
import PrivateRouter from "./components/PrivateRouter";

const App = () => {
  const [isAuthenticated, setIsAuthenticated] = useState(false);

  return (
    <Router>
      <Routes>
        <Route path="/login" element={<Login setIsAuthenticated={setIsAuthenticated} />} />
        <Route path="/" element={<PrivateRouter isAuthenticated={isAuthenticated} />}>
          <Route path="account" element={<Account />} />
        </Route>
      </Routes>
    </Router>
  );
};

export default App;
