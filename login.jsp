<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>cake.com</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://kit.fontawesome.com/b6dc738302.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
<script>
    function valid()
    {
    	if(document.form1.username.value=="")
        {
            alert("Enter Username");
            document.form1.username.focus();
            return false;
        }
        if(document.form1.password.value=="")
        {
            alert("Enter Password");
            document.form1.password.focus();
            return false;
        }
      	return true;
    }
</script>
  
</head>

<style>
  .t1{float: left;}
  .t2{float: left; margin: 22px; margin-left: 200px; border: none;background-color: white; font-size: 22px;}
  .t3{margin-left: 20px;}
  body{
       background-color:whitesmoke;
   } 
   nav{
       background-color:#663300;
   }
   .t5{float: left; margin: 8px; margin-left: 2px; border: none;background-color: #663300; font-size: 22px;}
   .t6{color:blue;}
   .t4{margin: 40px; margin-left: 4px;}
</style>


<body>
<nav class="navbar" style="margin:0px">
  <div class="container-fluid">
    <div class="navbar-header" style="font-size: 20px;">
      <a class="navbar-brand" href="i_HomePage.jsp">CakeShop</a>
    </div>
    <ul class="nav navbar-nav" style="margin-left:500px; font-size:20px;">
      <li class="active"><a href="i_HomePage.jsp">Home</a></li>
      <li>
      	<div class="dropdown">
    		<button class="t5" type="button btn-default" data-toggle="dropdown"><p class="t6">Menu<span class="caret"></span></p></button>
    		<ul class="dropdown-menu t4">
      			<li><a href="#">Chocolate Cake</a></li>
      			<li><a href="#">Strawberry Cake</a></li>
      			<li><a href="#">Red Velvate</a></li>
      			<li><a href="#">Black Berry</a></li>
      			<li><a href="#">Vanilla Cake</a></li>
      			<li><a href="#">Blue Berry</a></li>
      			<li><a href="#">Doll Cake</a></li>
      			<li><a href="#">Jar Cake</a></li>
    		</ul>
  		</div>
  	  </li>
      <li><a href="AboutUs.jsp">AboutUs</a></li>
      <li><a href="ContactUs.jsp">ContactUs</a></li>
    </ul>
    <ul class="nav navbar-nav" style="float:right;font-size: 20px;">
      <li class="active"><a href="login.jsp">Sign In</a></li>
      <li><a href="registration.jsp">Registration</a></li>
    </ul>
  </div>
</nav><br><br><br>
<div style="background-color: whitesmoke;">
      <div class="container">
        <form action="savelogin.jsp" method="post" name="form1" onsubmit="return valid()">
          <div class="panel panel-default" style="width: 40%; margin-left: 270px;">
          <div class="panel-body">
            <h2 style="text-align: center;">Sign in to your Account</h2>
            <p style="text-align: center;">To track your orders, manage your account and more</p>
            <div class="form-group" style="width: 70%; margin-left: 20px;">
                <input type="text" class="form-control" id="username" placeholder="Email Address*" name="username">
            </div>
            <div class="form-group" style="width: 70%; margin-left: 20px;">
                <input type="password" class="form-control" id="password" placeholder="Password*" name="password">
            </div>
            <h5 style="color: orange; padding-left: 20px;">Forgot Password?</h5>
            
            
            
            <div style="margin-left: 160px;">
                <button type="submit" class="btn btn-warning">SIGN IN</button>
            </div><br><br>

            <p style="margin-left: 130px;">Or Continue With
            <i class="fab fa-facebook"></i>
            <i class="fab fa-google"></i>
            </p>
        </form>
            
          </div>
  </div>
</div>


</body>
</html>