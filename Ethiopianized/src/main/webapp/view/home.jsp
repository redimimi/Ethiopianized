<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>Ethiopianized ${obj.name}</title>

<link href ="webjars/bootstrap/2.2.1/js/bootstrap.min.js"/>
<link href="/css/home.css" rel="stylesheet"/>

</head>
<body >

<div class ="App">
<div class ="pattern"></div>
<div id="container">
<jsp:include page="./components/NavBar.jsp"></jsp:include>


	<img src="/images/lo.jpg">
	<p>log in </p>
	
 <form action="LoginUser">
     
        <input type ="text" placeholder="Name" name="user_name"  required> <br>
        <input type="password" placeholder="password" name="password" required /> <br>
     	        <input type =submit value="Log in ">
</form>

	<p> I don't have an account<p>
	<strong><a href="signup">Sign Up</a></strong>

</div>
<div class ="pattern"></div>
</div>
</body>
</html>