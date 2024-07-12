<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ include file ="cdn.jsp" %>
      

<style>
       body {
            background: url('image/bg1.png');
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .login-container {
            background: #ffffff;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 100%;
        }
        .login-container h2 {
            margin-bottom: 20px;
            font-weight: 700;
            color: #333333;
            text-align: center;
        }
        .login-container .form-control {
            border-radius: 10px;
        }
        .login-container .btn {
            border-radius: 10px;
            background-color: #007bff;
            border-color: #007bff;
        }
        .login-container .btn:hover {
            background-color: #0056b3;
            border-color: #0056b3;
        }
        .login-container .form-group label {
            font-weight: 600;
            color: #555555;
        }
        .login-container .forgot-password {
            display: block;
            margin-top: 10px;
            text-align: right;
        }
    </style>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <div class="login-container">
    <h2>Login</h2>
    <form action="/loginServlet" method="post" >
        <div class="form-group">
            <label for="username">Username:</label>
            <input type="text" class="form-control" id="username" name="username" required>
        </div>
        <div class="form-group">
            <label for="password">Password:</label>
            <input type="password" class="form-control" id="password" name="password" required>
        </div>
        <button type="submit" class="btn btn-primary btn-block">Login</button>
        <a href="#" class="forgot-password">Forgot password?</a>
    </form>
</div>


 
</body>
</html>