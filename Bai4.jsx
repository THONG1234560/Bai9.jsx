import React from "react";

const Account = () => {
  return (
    <div className="account-page">
      <h1>Trang tài khoản</h1>
      <p>Chào mừng bạn đến với tài khoản của mình!</p>
    </div>
  );
};

export default Account;





import React from "react";
import { useNavigate } from "react-router-dom";

const Login = ({ setIsAuthenticated }) => {
  const navigate = useNavigate();

  const handleLogin = () => {
    setIsAuthenticated(true); // Cập nhật trạng thái đăng nhập
    navigate("/account"); // Điều hướng đến trang Account
  };

  return (
    <div className="login-page">
      <h1>Trang đăng nhập</h1>
      <button onClick={handleLogin} className="px-4 py-2 bg-blue-500 text-white rounded-md">
        Đăng nhập
      </button>
    </div>
  );
};

export default Login;






import React from "react";
import { Navigate, Outlet } from "react-router-dom";

const PrivateRouter = ({ isAuthenticated }) => {
  return isAuthenticated ? <Outlet /> : <Navigate to="/login" />;
};

export default PrivateRouter;
