<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ page import="model.User"%>

<%
User user = (User) session.getAttribute("user");

if (user == null) {
    response.sendRedirect("login.jsp");
    return;
}
%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Java Interview</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

<style>

body{

background:#eef2f7;

}

.container{

margin-top:60px;

}

.card{

border:none;

border-radius:20px;

padding:30px;

box-shadow:0 10px 30px rgba(0,0,0,.15);

}

</style>

</head>

<body>

<div class="container">

<div class="row justify-content-center">

<div class="col-md-8">

<div class="card">

<h2 class="text-center mb-4">
☕ Java AI Interview
</h2>

<form action="InterviewServlet" method="post">

<div class="mb-3">

<label class="form-label">
Candidate Name
</label>

<input
type="text"
class="form-control"
value="<%=user.getName()%>"
readonly>

</div>

<div class="mb-3">

<label class="form-label">
Select Difficulty
</label>

<select
name="difficulty"
class="form-select">

<option value="Easy">
Easy
</option>

<option value="Medium">
Medium
</option>

<option value="Hard">
Hard
</option>

</select>

</div>

<div class="mb-3">

<label class="form-label">
Number of Questions
</label>

<select
name="count"
class="form-select">

<option value="5">5</option>

<option value="10">10</option>

<option value="15">15</option>

<option value="20">20</option>

</select>

</div>

<input
type="hidden"
name="subject"
value="Java">

<button
class="btn btn-primary w-100">

Start AI Interview

</button>

</form>

</div>

</div>

</div>

</div>

</body>

</html>