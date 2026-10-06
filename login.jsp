<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Login | AI Interview Coach</title>

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">

<link rel="stylesheet"
href="css/login.css">

</head>

<body>

<div class="container">

    <!-- Left Side -->

    <div class="left">

        <img src="images/logo1.png" class="logo">

        <h1>AI Interview Coach</h1>

        <p>
            Practice Smarter.<br>
            Prepare Better.<br>
            Crack Your Dream Job with AI.
        </p>

        <img src="images/hero.png" class="hero">

    </div>

    <!-- Right Side -->

    <div class="right">

        <form action="LoginServlet" method="post">

            <div class="title">

                <i class="fa-solid fa-user-shield"></i>

                <h2>Welcome Back</h2>

            </div>

            <%
            String msg=request.getParameter("msg");

            if(msg!=null){

                if(msg.equals("success")){
            %>

            <div class="success">

                <i class="fa-solid fa-circle-check"></i>

                Registration Successful.
                Please Login.

            </div>

            <%
                }

                if(msg.equals("invalid")){
            %>

            <div class="error">

                <i class="fa-solid fa-circle-xmark"></i>

                Invalid Email or Password

            </div>

            <%
                }
            }
            %>

            <!-- Email -->

            <div class="input-box">

                <i class="fa-solid fa-envelope"></i>

                <input type="email"
                name="email"
                placeholder="Enter Email Address"
                required>

            </div>

            <!-- Password -->

            <div class="input-box">

                <i class="fa-solid fa-lock"></i>

                <input type="password"
                id="password"
                name="password"
                placeholder="Enter Password"
                required>

                <i class="fa-solid fa-eye toggle"
                onclick="showPassword()"></i>

            </div>

            <!-- Remember -->

            <div class="remember">

                <label>

                    <input type="checkbox">

                    Remember Me

                </label>

                <a href="#">

                    Forgot Password?

                </a>

            </div>

            <!-- Login Button -->

            <button type="submit">

                <i class="fa-solid fa-right-to-bracket"></i>

                Login

            </button>

            <!-- Register -->

            <div class="register">

                Don't have an account?

                <a href="register.jsp">

                    Register Now

                </a>

            </div>

            <div class="footer-text">

                © 2026 AI Interview Coach

            </div>
            
            <%
            String error = (String) request.getAttribute("error");

            if(error != null){
            %>

            <p style="color:red;"><%= error %></p>

            <%
            }
            %>

        </form>

    </div>

</div>

<script>

function showPassword(){

let pass=document.getElementById("password");

if(pass.type==="password"){

pass.type="text";

}else{

pass.type="password";

}

}

</script>

</body>
</html>