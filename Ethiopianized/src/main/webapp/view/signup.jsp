<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title> Signup to Ethiopianized</title>
<link href="/css/home.css" rel="stylesheet"/>
<meta charset="ISO-8859-1">
</head>
<body>
<div class="App">
<div class="pattern"></div>

<div id ="container">
<jsp:include page="./components/NavBar.jsp"></jsp:include>
<p> Welcome to the sign up page  </p>



<p class="message"> ${message.getMname()}</p>
<img src="/images/lo.jpg">

 <form action="addUser" method="post" id ="form">
 
  <label for="fname"></label>
     <input type="text" name ="first_name" required placeholder="First Name ..." id="fname"/> <br>
   
  <label for="Lname"></label>
     <input type="text" name ="last_name" required placeholder="Last Name ..." id="Lname"/><br>
    
  <label for="email"></label> 
      <input type="email" name ="email" required placeholder="Email@...com  " id="email" /><br>
    
 <label for="UName" ></label> 
   <input type="text" name ="username"  required placeholder="User Name ..." id="UName"/><br>
 
 <label for="Password"></label> 
     <input type="password" name = password  required placeholder="Password...." id ="pass"/><br>
     
 <label for="cpasssword"></label>
    <input type = "password"  name ="confirm_password" required placeholder="Comform password....." id="cpassword"/><br>
    
    
  <label for ="submit"></label>
  
    <input type="submit"  value ="Sign up">
    
</form>  

</div>
<div class="pattern"></div>
</div>
</body>
</html>
