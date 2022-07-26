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
   .t2{float: left; margin: 8px; margin-left: 2px; border: none;background-color: #663300; font-size: 22px;}
   .t3{color:blue;}
   .t4{margin: 40px; margin-left: 4px;}
</style>

<script>
    function order()
    {
    	alert("Order Successfull");
    	return true;
    }
</script>

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
	<form action="SaveBill.jsp" method="post">
  		<div class="panel panel-default">
    		<div style="text-align: center;"><h2>Bill</h2></div>
        
            	<div class="panel-body">
              	<%
              	Class.forName("com.mysql.jdbc.Driver");
         	  	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cake","root","");
         	  	try
         	  	{
         			String u1=(String) session.getAttribute("u1");
         		    Statement st=con.createStatement();
         		    ResultSet rs=st.executeQuery("select * from registration where username='"+u1+"' ");
         		    String fname="",lname="",Mob="",email="",city="",state="",Addr="";
         		    while(rs.next())
         		    {
         			    fname=rs.getString(2);
         			    lname=rs.getString(3);
         			    Mob=rs.getString(5);
         			    email=rs.getString(4);
         		    }
         	    %>
               		<div class="form-inline">
                		<div class="form-group col-sm-4">
                    		<label>Name:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    		<input type="text" class="form-control" name="name" size="26" value=<%=fname%>&nbsp;<%=lname %>>
               			</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
                		<div class="form-group">
                    		<label>Mobile No:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    		<input type="text" class="form-control" name="mob" size="26" value="<%=Mob%>" readonly>
                		</div>
            		</div><br>
            
            		<div class="form-inline ">
                		<div class="form-group col-sm-4">
                    		<label>Email:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    		<input type="text" class="form-control" name="email" size="26" value="<%=email%>">
                		</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
                		<div class="form-group">
                    		<label>Payment Method:</label>&nbsp;&nbsp;&nbsp;
                    		<input type="text" class="form-control" name="pay" size="26" value="Cash On Delivery">
                		</div>
            		</div><br>
            
            		<div class="form-inline">
                		<div class="form-group col-sm-4">
                    		<label>Order Date:</label>
                    		<input type="datetime-local" class="form-control" name="date1">
                		</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
                		<div class="form-group">
                    		<label>Delivery Date:</label>
                    		<input type="datetime-local" class="form-control" name="date2" >
                		</div>&nbsp;&nbsp;&nbsp;
                    	
                		</div>
            		</div>
            
             		<div class="form-inline">
                		<div class="form-group col-sm-4">&nbsp;&nbsp;&nbsp;&nbsp;
                    	<label>State:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    	<select name="state" class="form-control">
                            <option selected="selected" value="">Select State</option>
                            <option value="AP">Andhra Pradesh</option>
                            <option value="AR">ArunachalPradesh</option>
                            <option value="AS">Assam</option>
                            <option value="BR">Bihar</option>
                            <option value="CH">Chandigarh</option>
                            <option value="CG">Chattisgarh</option>
                            <option value="DL">Delhi</option>
                            <option value="GA">Goa</option>
                            <option value="GJ">Gujarat</option>
                            <option value="HR">Haryana</option>
                            <option value="HP">Himachal Pradesh</option>
                            <option value="JK">Jammu &amp; Kashmir</option>
                            <option value="JH">Jharkhand</option>
                            <option value="KA">Karnataka</option>
                            <option value="KL">Kerala</option>
                            <option value="MP">Madhya Pradesh</option>
                            <option value="MH">Maharashtra</option>
                            <option value="MN">Manipur</option>
                            <option value="ML">Meghalaya</option>
                            <option value="MZ">Mizoram</option>
                            <option value="NL">Nagaland</option>
                            <option value="OR">Orissa</option>
                            <option value="PY">Pondicherry</option>
                            <option value="PB">Punjab</option>
                            <option value="RJ">Rajasthan</option>
                            <option value="SK">Sikkim</option>
                            <option value="TN">Tamilnadu</option>
                            <option value="TR">Tripura</option>
                            <option value="UA">Uttaranchal</option>
                            <option value="UP">Uttar Pradesh</option>
                            <option value="WB">West Bengal</option>
                            <option value="XX">Others</option>
                         </select>         
                	</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                	
                	<div class="form-group">&nbsp;&nbsp;&nbsp;
                    		<label >City:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    		<input type="text" class="form-control" name="city" size="26">
                		</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            		</div><br>
            	
            		<div class="form-inline">
                		<div class="form-group col-sm-6">&nbsp;&nbsp;&nbsp;
                    		<label>Delivery Address:</label>&nbsp;&nbsp;&nbsp;
                    		<input type="text" class="form-control" name="addr" size="30">
                		</div>
                	</div><br><br><br><br>
           			
           	    
           	    <div style="margin-left:450px;">
            		<button type="button" class="btn btn-danger"><a href="CancelOrder.jsp">Cancel</a></button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            		<button type="submit" class="btn btn-success" onclick="return order()">Order</button>
				</div>
			<%  	
            }
            catch(Exception e)
            {
            	out.println(e);
            }
            %>
            </div>
       </form>
    </div>

</div>
  
</body>
</html>