import React from "react";
import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import ListProduct from "./components/ListProduct";
import ProductDetail from "./components/ProductDetail";
import './App.css'

const App = () => {
  return (
    <Router>
      <div className="min-h-screen bg-gray-50 p-6 bg-red-300">
        <Routes>
          <Route path="/" element={<ListProduct />} />
          <Route path="/product-detail/:id" element={<ProductDetail />} />
        </Routes>
      </div>
    </Router>
  );
};

export default App;
