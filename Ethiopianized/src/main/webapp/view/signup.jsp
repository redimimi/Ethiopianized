<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title> Sign up</title>
<jsp:include page="./components/header.jsp"></jsp:include>
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
     <input type="password" name = "password"  required placeholder="Password...." id ="pass"/><br>
     
 <label for="cpasssword"></label>
    <input type = "password"  name ="confirm_password" required placeholder="Comform password....." id="cpassword"/><br>
    
    
  <label for ="submit"></label>
  
    <input type="submit"  value ="Sign up" id="submit-button">
    <p id ="mess"> </p>
</form>  

<div>
<jsp:include page="./components/footer.jsp"></jsp:include>
</div>



</div>
<div class="pattern"></div>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>

<script>

$("#submit-button").click(function(e){
e.preventDefault();
	var password = $("#pass").val();
	var cpassword =$("#cpassword").val();
	
	if(password != cpassword)
	{
		$("#mess").text("Incorrect password").css("color","red");
	}
	else {
		$("#form").trigger("submit");
	 
	};
});

</script>


</body>
</html>
