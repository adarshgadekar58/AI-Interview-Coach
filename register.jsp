<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Register | AI Interview Coach</title>

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">

<link rel="stylesheet" href="css/register.css">

</head>

<body>

<div class="container">

    <div class="left">

        <img src="images/logo1.png" class="logo">

        <h1>AI Interview Coach</h1>

        <p>
            Practice smarter. Improve faster. Crack your dream job with AI.
        </p>

        <img src="images/hero.png" class="hero">

    </div>

    <div class="right">

        <form action="RegisterServlet" method="post">
             
             <%
                String msg=request.getParameter("msg");

                 if(msg!=null){

                   if(msg.equals("failed")){
                	   %>

                	   <p style="color:red;text-align:center;">
                	   Email already exists!
                	   </p>

                	   <%
                	   }
                	   }
                	   %>

            <h2>Create Account</h2>
             <div class="input-box">
                <i class="fa-solid fa-user"></i>
                <input type="text"
                name="userId"
                placeholder="Enter User Id"
                required>
            </div>
            

            <div class="input-box">
                <i class="fa-solid fa-user"></i>
                <input type="text"
                name="name"
                placeholder="Full Name"
                required>
            </div>

            <div class="input-box">
                <i class="fa-solid fa-envelope"></i>
                <input type="email"
                name="email"
                placeholder="Email Address"
                required>
            </div>

            <div class="input-box">
                <i class="fa-solid fa-lock"></i>
                <input type="password"
                id="password"
                name="password"
                placeholder="Password"
                required>

                <i class="fa-solid fa-eye toggle"
                onclick="togglePassword()"></i>

            </div>

            <div class="input-box">
                <i class="fa-solid fa-building-columns"></i>
                <input type="text"
                name="college"
                placeholder="College Name"
                required>
            </div>

            <div class="input-box">
                <i class="fa-solid fa-code"></i>
                <input type="text"
                name="skills"
                placeholder="Skills (Java, SQL, HTML...)"
                required>
            </div>

            <button type="submit">
                Register
            </button>

            <p>

                Already have an account?

                <a href="login.jsp">

                    Login

                </a>

            </p>

        </form>

    </div>

</div>

<script>

function togglePassword(){

var pass=document.getElementById("password");

if(pass.type==="password")
pass.type="text";
else
pass.type="password";

}

</script>

</body>
</html>

