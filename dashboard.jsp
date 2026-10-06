<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Model.User" %>

<%
User user = (User)session.getAttribute("user");

if(user == null){
    response.sendRedirect("login.jsp");
    return;
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AI Interview Coach Dashboard</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<style>

body{
background:#f5f7fa;
font-family:Arial,Helvetica,sans-serif;
}

.navbar{
background:#0d6efd;
}

.navbar-brand{
font-weight:bold;
color:white;
}

.nav-link{
color:white;
}

.hero{
background:linear-gradient(135deg,#0d6efd,#6610f2);
color:white;
padding:40px;
border-radius:15px;
margin-top:30px;
}

.card{
border:none;
border-radius:15px;
transition:.3s;
box-shadow:0 5px 15px rgba(0,0,0,.1);
}

.card:hover{
transform:translateY(-8px);
}

.card-body{
text-align:center;
}

.btn-start{
width:100%;
}

.footer{
margin-top:50px;
text-align:center;
color:gray;
}

</style>

</head>

<body>

<nav class="navbar navbar-expand-lg">

<div class="container">

<a class="navbar-brand" href="#">AI Interview Coach</a>

<ul class="navbar-nav ms-auto">

<li class="nav-item">
<a class="nav-link" href="#">Profile</a>
</li>

<li class="nav-item">
<a class="nav-link" href="logout">Logout</a>
</li>

</ul>

</div>

</nav>

<div class="container">

<div class="hero">

<h2>Welcome, <%= user.getName() %> 👋</h2>

<p>
Prepare for interviews with AI-powered mock interviews and improve your confidence.
</p>

</div>

<div class="row mt-4">

<div class="col-md-4 mb-4">

<div class="card">

<div class="card-body">

<h4>☕ Java</h4>

<p>Core Java, OOPs, Collections, Exception Handling</p>

<a href="javaInterview.jsp" class="btn btn-primary btn-start">
Start Interview
</a>

</div>

</div>

</div>

<div class="col-md-4 mb-4">

<div class="card">

<div class="card-body">

<h4>🌱 Spring Boot</h4>

<p>Spring Core, Boot, REST API, JPA</p>

<a href="springInterview.jsp" class="btn btn-success btn-start">
Start Interview
</a>

</div>

</div>

</div>

<div class="col-md-4 mb-4">

<div class="card">

<div class="card-body">

<h4>🗄 SQL</h4>

<p>SQL, PL/SQL, Joins, Queries</p>

<a href="sqlInterview.jsp" class="btn btn-warning btn-start">
Start Interview
</a>

</div>

</div>

</div>

<div class="col-md-4 mb-4">

<div class="card">

<div class="card-body">

<h4>⚛ React</h4>

<p>Components, Hooks, Routing, API</p>

<a href="reactInterview.jsp" class="btn btn-info btn-start">
Start Interview
</a>

</div>

</div>

</div>

<div class="col-md-4 mb-4">

<div class="card">

<div class="card-body">

<h4>💼 HR Interview</h4>

<p>Behavioral and communication questions</p>

<a href="hrInterview.jsp" class="btn btn-secondary btn-start">
Start Interview
</a>

</div>

</div>

</div>

<div class="col-md-4 mb-4">

<div class="card">

<div class="card-body">

<h4>📊 Interview History</h4>

<p>View previous interview scores and reports</p>

<a href="history.jsp" class="btn btn-dark btn-start">
View History
</a>

</div>

</div>

</div>

</div>

<div class="footer">

<p>© 2026 AI Interview Coach | Java Full Stack Project</p>

</div>

</div>

</body>
</html>