<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>cake.shop</title>
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://kit.fontawesome.com/b6dc738302.js" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<style>
   .tej{
       font-size:20px;
       color:#fff;
   }
   body{
       background-color:whitesmoke;
   }
   nav{
       background-color:#663300;
   }
   .t2{float: left; margin: 8px; margin-left: 2px; border: none;background-color: #663300; font-size: 22px;}
   .t3{color:blue;}
   .t4{margin: 40px; margin-left: 4px;}
</style>

</head>
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
    		<button class="t2" type="button btn-default" data-toggle="dropdown"><p class="t3">Menu<span class="caret"></span></p></button>
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
      <li class="active"><a href="i_HomePage.jsp">Log Out</a></li>
    </ul>
  </div>
</nav>

<div class="container">
  <div class="panel panel-default">
      <div class="panel-body">
          <h2>Welcome To Cake Shop</h2>
          <div class="panel-group">
              <div class="panel panel-primary">
                  <div class="panel-heading tej"><a href="AddCake.jsp">Add Cake</a></div>
              </div>
    
              <div class="panel panel-primary">
                  <div class="panel-heading  tej"><a href="sellReport.jsp">Sell Report</a></div>
              </div>
          </div>
      </div>
  </div>
</div>


</body>
</html>