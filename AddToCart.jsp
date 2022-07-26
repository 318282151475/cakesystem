<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
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
   .tej2{width:200px; text-align:center;}
   .tej3{width:300px; text-align:center;}
   .tej4{width:100px; text-align:center;}
   .tej5{margin-left:500px}
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
      <li class="active"><a href="Customer.jsp">Add To Cart</a></li>
      <li class="active"><a href="i_HomePage.jsp">Log Out</a></li>
    </ul>
  </div>
</nav>

<div class="container">
  <div class="panel panel-default">
    <div style="text-align: center;"><h2>My Cart</h2></div>
        <div class="panel-body">
            
            <table border="1" cellspacing="0" cellpadding="5">
              <tr>
                <th class="tej2">S.No</th>
                <th class="tej2">Product Name</th>
                <th class="tej3">Price</th>
                <th class="tej2">Quantity</th>
                <th class="tej2">SUB TOTAL</th>
                <th class="tej2">UPDATE</th>
                <th class="tej2">REMOVE <i class="fas fa-trash-alt"></i></th>
              </tr>
              
              <!--code A From line 67 to 104 used to display my cart details and as we increase quantity then subtotal also increase -->
              
             <%
              Class.forName("com.mysql.jdbc.Driver");
         	  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cake","root","");
         	  
         	 int sno=0;
         	 try
             {
             	String u1=(String) session.getAttribute("u1");
             	
             	
             	Statement st=con.createStatement();
             	ResultSet rs=st.executeQuery("select * from cart where username='"+u1+"' ");
             	String name="", price="";
             	int quat=0,subtotal=0;
             	while(rs.next())
             	{
             		name=rs.getString(2);
             		price=rs.getString(3);
             		quat=rs.getInt(4);
             		
             		subtotal=Integer.parseInt(price)*quat;
             		sno=sno+1;
                    
                    %>
                    <form action="updateAddToCart.jsp" method="post">  
                        <tr>
                            <td class="tej2"><%=sno%></td>
                			<td class="tej2"><input type="text" name="name" value="<%=name%>" readonly></td>
                			<td class="tej2"><i class="fa fa-inr"><input type="number" name="price" value="<%=price%>" readonly></i></td>
                			<td class="tej2"><input type="number" name="quantity" value="<%=quat %>"></td>
                			<td class="tej2"><i class="fa fa-inr"><%=subtotal%></i></td>
                			<td class="tej2"><input type="submit" value="update"></td>
                			<td class="tej2"><a href="Remove.jsp?name=<%=name%>&price=<%=price%>">REMOVE<i class="fas fa-trash-alt"></i></a></td>
              			</tr>
             		</form> 
                    <!-- At each iteration we goes to updateAddToCart.jsp e.g 1st iteration we goes to updateAddToCart.jsp , 2nd iteration also we goes to updateAddToCart.jsp ans so on -->
            	<%
            	}
          		%>
           	</table><br><br>
           	<!-- code A ends here -->
            
             
             	<!-- This code B for calculate final total -->
            	<table border="1" cellspacing="1" cellpadding="1">
            	<% 
                	Statement st1=con.createStatement();
             		ResultSet rs1=st1.executeQuery("select * from cart where username='"+u1+"' ");
             		String stotal="";
             		int Total=0;
             		while(rs1.next())
             		{
             			stotal=rs1.getString(5);
                    	Total=Total+Integer.parseInt(stotal);
             		}
            	%>
              		<tr>  
                		<th class="tej4">Total</th>
                		<th class="tej4"><%=Total %></th>
              		</tr>  
            	</table>
            	<!-- code B ends here -->
            	
            	<br><br>
            	<a href="ProceedToOrder.jsp"><input type="button" class="btn btn-primary tej5" value="Proceed To Order"></a>
             	
           <%  	
            }
            catch(Exception e)
            {
            	out.println(e);
            }
            %>         
        

        </div>
 </div>
</div>

</body>
</html>