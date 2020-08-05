<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>login</title>
<jsp:include page="./components/header.jsp"></jsp:include>
</head>
<body>

<div class ="App">
<div class ="pattern"></div>

<div id="container">
<jsp:include page="./components/NavBar.jsp"></jsp:include>

	<img src="/images/lo.jpg">
	<p>log in </p>
	 
	
<form action="LoginUser" method="post">
 
     <label for="Uname"></label>
        <input type ="text" placeholder="User Name*......" name="username"  required id ="Uname"> <br>

      <label for = "paasword"></label><br>
         <input type="password" placeholder="password*....." name="password" required /> <br>
         
     	        <input type =submit value="Log in">
</form>

	<p> Don't have an account</p>
		
	 <form action="/signup">
        <input type="submit"  value="Sign up " />
    </form>
     
    <jsp:include page="./components/footer.jsp"></jsp:include>
</div>

<div class ="pattern"></div>
</div>
</body>
</html>

</body>
</html>