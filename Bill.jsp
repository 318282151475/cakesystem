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

<style type="text/css">
   body{
       background-color:whitesmoke;
   } 
   nav{
       background-color:#663300;
   }
   .tej2{width:200px; text-align:center;}
   .tej3{margin-left:45%;}
   .tej4{margin-left:5%;}
   .tej5{color:#282A35;}
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
</nav><br><br><br>

<div class="container">
  		<div class="panel panel-default">
    		<div style="text-align: center;"><h2><i>Your Bill</i></h2></div>
        
            	<div class="panel-body">
              	<%
              	Class.forName("com.mysql.jdbc.Driver");
         	  	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cake","root","");
         	  	try
         	  	{
         			String u1=(String) session.getAttribute("u1");
         		    Statement st=con.createStatement();
         		    ResultSet rs=st.executeQuery("select * from bill where username='"+u1+"' ");
         		    String name="",Mob="",PayMethod="",email="",Odate="",Ddate="",city="",state="",Addr="";
         		    while(rs.next())
         		    {
         			    name=rs.getString(2);
         			    Mob=rs.getString(3);
         			    PayMethod=rs.getString(5);
         			    email=rs.getString(4);
         			    Odate=rs.getString(6);
         			    Ddate=rs.getString(7);
         			    city=rs.getString(9);
         			    state=rs.getString(8);
         			    Addr=rs.getString(10);
         		    }
         	    %>
         	      <div class="form-inline tej4">
                		<div class="form-group col-sm-4">
                    		<h4><b class="tej5">Name:</b><%=name %></h4>
                		</div>
                
                		<div class="form-group col-sm-4">
                    		<h4><b class="tej5">Mobile:</b><%=Mob %></h4>
                		</div>
                		
                		<div class="form-group">
                    		<h4><b class="tej5">Email:</b><%=email %></h4>
                		</div>
                    	
                  </div>
                  
                  <div class="form-inline tej4">
                		<div class="form-group col-sm-4">
                    		<h4><b class="tej5">Payment Method:</b><%=PayMethod %></h4>
                		</div>
                
                		<div class="form-group col-sm-4">
                    		<h4><b class="tej5">Order Date:</b><%=Odate %></h4>
                		</div>
                		
                		<div class="form-group">
                    		<h4><b class="tej5">Delivery Date:</b><%=Ddate %></h4>
                		</div>
                    	
                  </div>
                  
                  <div class="form-inline tej4">
                        <div class="form-group col-sm-4">
                    		<h4><b class="tej5">State:</b><%=state %></h4>
                		</div>
                       
                		<div class="form-group col-sm-4">
                    		<h4><b class="tej5">City:</b><%=city %></h4>
                		</div>
                
                		<div class="form-group">
                    		<h4><b class="tej5">Address:</b><%=Addr %></h4>
                		</div>
                    	
                  </div>
            		
             
             		<h3 style="text-align: center;">Product Details</h3>   
             		<table border="1" cellspacing="0" cellpadding="5" class="tej4">
              			<tr>
                			<th class="tej2">S.No</th>
                			<th class="tej2">Product Name</th>
                			<th class="tej2">Price</th>
               		 		<th class="tej2">Quantity</th>
                			<th class="tej2">SUB TOTAL</th>
              			</tr>
             
              
             			<%
         	  
         	    		Statement st1=con.createStatement();
             			ResultSet rs1=st1.executeQuery("select * from cart where username='"+u1+"' ");
             			String name1="", price="";
             			int quat=0,subtotal=0;
             			int sno=0;
             			while(rs1.next())
             			{
             				name1=rs1.getString(2);
             				price=rs1.getString(3);
             				quat=rs1.getInt(4);
             		
             				subtotal=Integer.parseInt(price)*quat;
             				sno=sno+1;
                    
                    	%>
                     
                    	<tr>
                    		<td class="tej2"><%=sno%></td>
                			<td class="tej2"><%=name1%></td>
                			<td class="tej2"><i class="fa fa-inr"><%=price%></i></td>
               				<td class="tej2"><%=quat %></td>
               				<td class="tej2"><i class="fa fa-inr"><%=subtotal%></i></td>
        		    	</tr>
             			<%
            			}
          				%>
           			</table><br>
           	
           			<!-- This code B for calculate final total -->
   
            		<% 
                	Statement st2=con.createStatement();
             		ResultSet rs2=st2.executeQuery("select * from cart where username='"+u1+"' ");
             		String stotal="";
             		int Total=0;
             		while(rs2.next())
             		{
             			stotal=rs2.getString(5);
                    	Total=Total+Integer.parseInt(stotal);
             		}
            		%>
            		<h4 class="tej3"><b>Total:</b><%=Total %></h4>
              	<!-- code B ends here -->
           	    
           	    <div style="margin-left:500px;">
            		<a onclick="window.print();"><button class="btn btn-success" >Print</button></a>
				</div>
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