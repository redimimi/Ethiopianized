<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href=" https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<jsp:include page="./components/header.jsp"></jsp:include>
<title>My Cart </title>
</head>
<body>

<div class ="App">
<div class ="pattern"></div>
<div id="container">
<jsp:include page="./components/NavBar.jsp"></jsp:include>

<div class ="midel">

<div class="row">

<div class="col-lg-6">

<p>Your Cart </p>

<input type ="button" value ="Edite ">        
<input type ="button" value = "Remove">

</div>




<div class="col-lg-4">
<p>Summary</p>

<p> Sun Total = </p>

<p> Estemated shiping =  </p>
<p> Total = </p>
<p> Tax =</p>
<input type ="button" value ="Proced to  Check Out" class="pay-pa">

         <p> Or <p>
         
<input type ="button" value = "Check out with " class="pay-pa1">
</div>



</div>

</div>
</div>

<div class="pattern"></div>

</div>
</body>


<style>

.col-lg-6
{
box-shadow:  0px 0px 48px 7px rgba(206,206,161,0.45);

}
.col-lg-4 {

box-shadow: 0px 0px 48px 7px rgba(206,206,161,0.45);
}


.pay-pa
{
width: 300px;

}


.pay-pa1
{
    width: 300px;
    background-image: url(/images/payp.png);
    background-size: 73px;
    background-repeat: no-repeat;
    background-position: 91% 10%;
    }
    
.row {
    margin-right: -199px;
    margin-left: 92px;
}
</style>
</html>