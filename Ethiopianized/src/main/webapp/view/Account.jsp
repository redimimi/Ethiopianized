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

<lable for="fname">First Name :</lable><br>
   <input type ="text" value="${customer.first_name}" id="fname"/> <br>

<lable for="Lname" >Last Name :</lable> <br>
   <input type ="text" value="${customer.last_name}" id="Lname"/><br>
   
<lable for="email">Email: </lable> <br>
    <input type ="text" value="${customer.email}" id="email"/><br>
    
 <input type="submit" value="Update"> <input type="submit" value ="continue" >


</form>
</div>
<div class ="pattern"></div>
</div>
</body>
</html>