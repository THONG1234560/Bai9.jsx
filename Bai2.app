import { BrowserRouter as Router, Routes, Route, NavLink } from "react-router-dom";
import PrivateRouter from "./components/PrivateRouter";
import AdminIndex from "./components/AdminIndex";
import Account from "./components/Account";
import Product from "./components/Product";
import Order from "./components/Order";
import 'bootstrap/dist/css/bootstrap.min.css';
function App() {
    return (
        <Router>
            <div className="container mt-4">
                <nav className="navbar navbar-expand-lg navbar-light bg-light">
                    <div className="container">
                        <ul className="navbar-nav">
                            <li className="nav-item">
                                <NavLink className="nav-link" to="/admin">Admin</NavLink>
                            </li>
                        </ul>
                    </div>
                </nav>

                <Routes>
                    <Route path="/admin" element={<PrivateRouter />}>
                        <Route index element={<AdminIndex />} />
                        <Route path="account" element={<Account />} />
                        <Route path="product" element={<Product />} />
                        <Route path="order" element={<Order />} />
                    </Route>
                    <Route path="/" element={<h1 className="text-center">Welcome to the App</h1>} />
                </Routes>
            </div>
        </Router>
    );
}

export default App;
