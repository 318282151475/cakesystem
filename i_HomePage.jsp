<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>cake.com</title>
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://kit.fontawesome.com/b6dc738302.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<style>
   body{
       background-color:whitesmoke;
   } 
   nav{
       background-color:#663300;
   }
   .tejas{
       color:#663300;
       align:center;
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
      <li class="active"><a href="login.jsp">Sign In</a></li>
      <li><a href="registration.jsp">Registration</a></li>
    </ul>
  </div>
</nav>

  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">

      <div class="item active">
        <img src="images/cake4.jpg" alt="Los Angeles" style="width:1550px;height:650px;">
        <div class="carousel-caption">
          <p>Chocolate</p>
        </div>
      </div>

      <div class="item">
        <img src="images/cake1.jpg" alt="Chicago" style="width:1550px;height:650px;">
        <div class="carousel-caption">
          <p>Strawberry</p>
        </div>
      </div>
    
      <div class="item">
        <img src="images/cake2.jfif" alt="New York" style="width:1550px;height:650px;">
        <div class="carousel-caption">
          <p>Chocolate with Strawberry</p>
        </div>
      </div>
  
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>


<div class="container">
  <h2 align="center">Browse Cake By Type</h2>
  <div class="row">
    <div class="col-md-4">
      <div class="thumbnail">
          <img src="images/cake6.jpg" alt="Lights" style="width:100%;">
          <h3 align="center">Strawberry Cake</h3>
      </div>
    </div>
    
    <div class="col-md-4">
      <div class="thumbnail">
          <img src="images/cake7.jfif" alt="Lights" style="width:100%;">
          <h3 align="center">Chocolate Cake</h3>
      </div>
    </div>
    
    <div class="col-md-4">
      <div class="thumbnail">
          <img src="images/cake3.jpg" alt="Lights" style="width:100%;">
          <h3 align="center">Pineapple Cake</h3>
      </div>
    </div>
    
    <div class="col-md-4">
      <div class="thumbnail">
          <img src="images/cake10.jfif" alt="Lights" style="width:100%;">
          <h3 align="center">Black Forest</h3>
      </div>
    </div>
    
    <div class="col-md-4">
      <div class="thumbnail">
          <img src="images/cake9.jfif" alt="Lights" style="width:100%;">
          <h3 align="center">Vanilla Cake</h3>
      </div>
    </div>
    
    <div class="col-md-4">
      <div class="thumbnail">
          <img src="images/cake11.jpeg" alt="Lights" style="width:100%;">
          <h3 align="center">Creamy Chocolate Cake</h3>
      </div>
    </div>
    
    
  </div>
  
  
  <h2 align="center">Trending Now</h2>
  <div class="row">
    <div class="col-md-3">
      <div class="thumbnail">
          <img src="images/jarCake.jfif" alt="Lights" style="width:100%; height:300px">
          <h3 align="center">Jar Cake</h3>
      </div>
    </div>
    
    <div class="col-md-3">
      <div class="thumbnail">
          <img src="images/dollCake.jpg" alt="Lights" style="width:100%; height:300px">
          <h3 align="center">Doll Cake</h3>
      </div>
    </div>
    
    <div class="col-md-3">
      <div class="thumbnail">
          <img src="images/Pull-me-up-cake.jpg" alt="Lights" style="width:100%;">
          <h3 align="center">PullMeUp Cake</h3>
      </div>
    </div>
    
    <div class="col-md-3">
      <div class="thumbnail">
          <img src="images/bombCake.jfif" alt="Lights" style="width:100%; height:300px">
          <h3 align="center">Bomb Cake</h3>
      </div>
    </div>
   </div> 
    
    
  <h2 align="center">Best Seller</h2>
  <div class="row">
    <div class="col-md-3">
      <div class="thumbnail">
          <img src="images/redVelvate.webp" alt="Lights" style="width:100%; height:250px;">
          <h3 align="center">Red Velvate</h3>
          <h3 align="center">Rs 500</h3>
      </div>
    </div>
    
    <div class="col-md-3">
      <div class="thumbnail">
          <img src="images/cake3.jpg" alt="Lights" style="width:100%;">
          <h3 align="center">Pineapple Cake</h3>
          <h3 align="center">Rs 900</h3>
      </div>
    </div>
    
    <div class="col-md-3">
      <div class="thumbnail">
          <img src="images/blackForest.jfif" alt="Lights" style="width:100%;">
          <h3 align="center">Black Forest</h3>
          <h3 align="center">Rs 400</h3>
      </div>
    </div>
    
    <div class="col-md-3">
      <div class="thumbnail">
          <img src="images/blueBerry.jpeg" alt="Lights" style="width:100%;">
          <h3 align="center">Blue Berry</h3>
          <h3 align="center">Rs 250</h3>
      </div>
    </div>
       
  </div>
</div>
</body>
</html>