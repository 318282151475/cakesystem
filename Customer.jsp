<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>cake.com</title>
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://kit.fontawesome.com/b6dc738302.js" crossorigin="anonymous"></script>
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
       text-decoration:underline;
   }
   .tej{
       width:130px;
       height:40px;
       border-radius:10px;
   }
   .tej2{
       font-size:20px;
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
      <li class="active"><a href="AddToCart.jsp">My Cart</a></li>
      <li class="active"><a href="i_HomePage.jsp">Log Out</a></li>
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
  <h2 align="center">Online Cake Shop</h2>
  <div class="row">
  <%try
  {
        
      Class.forName("com.mysql.jdbc.Driver");
      Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cake","root","");
      Statement st=con.createStatement();
          
      ResultSet rs=st.executeQuery("select * from product");
      String pID="",pType="", pName="", pUnits="", pPrice="",pImage="",pDisct="";
  	  int quantity=0, Total=0;  //for cart table
  	  while(rs.next())
      {
  	      pID=rs.getString(2);
  	      pType=rs.getString(3);
  	 	  pName=rs.getString(4);
  		  pUnits=rs.getString(5);
  		  pPrice=rs.getString(6);
  		  pImage=rs.getString(7);
  		  pDisct=rs.getString(8);
  		  
  		  quantity=1;
  		  Total=Integer.parseInt(pPrice);
  	  %>
      <div class="col-md-4">
          <div class="thumbnail">
  		      <img src="images/<%=pImage %>" width="100%">
  		      <div class="caption">
  		          <h4 class="tejas"><%=pName %></h4>
  		          <h4 class="tejas"><%=pUnits %></h4>
                  <h4 class="tejas">Rs<%=pPrice %></h4>
                  <h4 class="tejas"><%=pDisct %> discount</h4>
              </div>
              
              <div style="margin-left: 120px;">
                  <button type="button" class="btn btn-warning tej"><span class="tej2"><a href="SaveCakeDetails.jsp?pName=<%=pName%>&pPrice=<%=pPrice%>&quantity=<%=quantity%>&Total=<%=Total%>">Add To Cart</a></span></button>
              </div>
        </div>
      </div>
          
      <%  }   
      }
      catch(Exception rr)
      {
    	  out.println(rr);
      }
      %>
  </div>
</body>
</html>