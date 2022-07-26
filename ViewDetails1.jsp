<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
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
  
<style>
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
      <li><a href="#">ContactUs</a></li>
    </ul>
    <ul class="nav navbar-nav" style="float:right;font-size: 20px;">
      <li class="active"><a href="i_HomePage.jsp">Log Out</a></li>
    </ul>
  </div>
</nav><br><br><br>

<div class="container">
  <div class="panel panel-default">
    <div style="text-align: center;"><h2>Order Details</h2></div>
        <div class="panel-body">
            
            <table class="table table-bordered">
            	<thead>
      				<tr>
       					<th>Product Name</th>
        				<th>Price</th>
        				<th>Quantity</th>
        				<th>SUB TOTAL</th>
      				</tr>
    			</thead>
    			<%
             	Class.forName("com.mysql.jdbc.Driver");
               	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cake","root","");
                try
           	  	{
                    String uname=request.getParameter("uname");
         	  
         	     	Statement st1=con.createStatement();
             		ResultSet rs1=st1.executeQuery("select * from cart where username='"+uname+"' ");
           			String name1="", price="";
           			int quat=0,subtotal=0;
             			
             		while(rs1.next())
             		{
             			name1=rs1.getString(2);
            			price=rs1.getString(3);
             			quat=rs1.getInt(4);
             		
           				subtotal=Integer.parseInt(price)*quat;
             		%>	
    			<tbody>
      				<tr>
        				<td><%=name1 %></td>
        				<td><%=price %></td>
        				<td><%=quat %></td>
        				<td><%=subtotal %></td>
      				</tr>
    			</tbody>
  			
  				<% 
  				}
             	%>
             	
             	
            	<% 
                	Statement st2=con.createStatement();
             		ResultSet rs2=st2.executeQuery("select * from cart where username='"+uname+"' ");
             		String stotal="";
             		int Total=0;
             		while(rs2.next())
             		{
             			stotal=rs2.getString(5);
                    	Total=Total+Integer.parseInt(stotal);
             		}
            	%>
            	<h4><b>Total:</b><%=Total %></h4> 
            	
    			<%}
    			catch(Exception tas)
    			{
    				out.println(tas);
    			}
    			%>
            </table>	
        </div>

</body>
</html>