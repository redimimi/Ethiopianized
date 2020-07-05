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
<p> welcome to the sign up page  </p>



<p class="message"> ${message.getMname()}</p>
<img src="/images/lo.jpg">

 <form action="addUser">
 
  <lable for="fname"></lable>
     <input type="text" name ="first_name" required placeholder="First Name ..." id="fname"/> <br>
   
  <lable for="Lname"></lable>
     <input type="text" name ="last_name" required placeholder="Last Name ..." id="Lname"/><br>
    
  <lable for="email"></lable> 
      <input type="email" name ="email" required placeholder="Email@...com  " id="email" /><br>
    
 <lable for="UName" ></lable> 
   <input type="text" name ="user_name"  required placeholder="User Name ..." id="UName"/><br>
 
 <lable for="Password"></lable> 
     <input type="password" name = password  required placeholder="Password...." id ="pass"/><br>
     
 <lable for="conform_passsword"></lable>
    <input type = "password"  name ="confirm_password" required placeholder="Comform password" id="conform_passsword"/><br>
    
  <lable for ="submit"/>
    <input type="submit"  value ="Sign up">
    
</form>  

</div>
<div class="pattern"></div>
</div>
</body>
</html>
