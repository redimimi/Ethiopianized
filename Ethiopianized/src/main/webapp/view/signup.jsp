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

<form action="addUser" id="form">



First Name :<input type="text" name = "first_name"/><br>
Last name  :<input type="text" name ="last_name"/><br>
Email      :<input type="text" name ="email"/> <br>
User name  :<input type="text" name ="user_name"/> <br>
Password   :<input type="password" name = password id ="pass"/><br>
Confirm password :<input type ="password" id= conpass/> <br> 
 <input type ="submit"> 
 
</form>

</div>
<script type="webjars/jquery/1.7.2/jquery.min.js"></script>

<script type="text/javascript">

var form = $("#form");
form.on("submit",fuction(e){
	e.preventDefualt();
	
	var password = $("#pass").val();                           
	var confirm = $("#conpass").val();
	
	if (password != confirm){
		$(this).prepend("<p style='color:red'>The password dosnt match </p>")
		
	}
	
})



</script>
<div class="pattern"></div>
</div>
</html>