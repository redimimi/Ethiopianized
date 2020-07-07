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
<p> Welcome Back ${customer.username}</p>

<h3>Account information </h3>

<p>${message.getMname()}<p>

<form action="Update">

<label for="fname">First Name :</label><br>
   <input type ="text" name="first_name" value="${customer.first_name}" id="fname"/> <br>

<label for="Lname" >Last Name :</label> <br>
   <input type ="text" name="last_name" value="${customer.last_name}" id="Lname"/><br>
   
<label for="email">Email: </label> <br>
    <input type ="text" name="email" value="${customer.email}" id="email"/><br>
    
<label for ="username">User Name</label><br>
    <input type="text" name ="username" value ="${customer.username}" id ="username" readonly/><br>
    
 <input type="submit" value="Update"> <input type="submit" value ="continue" >


</form>
</div>
<div class ="pattern"></div>
</div>
</body>
</html>