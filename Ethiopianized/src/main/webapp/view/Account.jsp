<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Your Account</title>

<link href ="webjars/bootstrap/2.2.1/js/bootstrap.min.js"/>
<link href="/css/home.css" rel="stylesheet"/>

</head>
<body>
<div class ="App">
<div class ="pattern"></div>
<div id ="container">
<jsp:include page="./components/NavBar.jsp"></jsp:include>
<p> Welcome Back ${customer.user_name}</p>

<h3>Account information </h3>
<form action="Update">

First Name : <input type ="text" value="${customer.first_name}"/> <br>
Last Name : <input type ="text" value="${customer.last_name}"><br>
Email     :<input type ="text" value="${customer.email}">


</form>
</div>
<div class ="pattern"></div>
</div>
</body>
</html>