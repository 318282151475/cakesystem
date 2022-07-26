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
   .t5{margin-left:20px;}
</style>

<script>
    function message()
    {
    	var a=document.getElementById("contactusername").value;
    	var b=document.getElementById("contactemail").value;
    	var c=document.getElementById("contactcomment").value;
    	
    	if(a!="" && b!="" && c!="")
    	{
    	alert("Message Send Successfully");
    	return true;
    	}
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
      <li class="active"><a href="login.jsp">Sign In</a></li>
      <li><a href="registration.jsp">Registration</a></li>
    </ul>
  </div>
</nav><br><br><br>

<div class="container">
  <div class="panel panel-default">
    <div style="text-align: center;"><h2>Contact Us</h2></div>
    <div class="row contact-form mt-md-5 pt-5 t5">
    	<div class="col-lg-6 wthree-form-left">
        	<!-- contact form grid -->
            <div class="contact-top1">
            	<h5 class="text-dark mb-4 text-capitalize">send us a note</h5>
            	<form action="saveMessage.jsp" method="get" class="f-color">
                	<div class="form-group">
                    	<label for="contactusername">Name</label>
                        <input type="text" class="form-control" name="name" id="contactusername" required>
                    </div>
                    <div class="form-group">
                    	<label for="contactemail">Email</label>
                        <input type="email" class="form-control" name="email" id="contactemail" required>
                    </div>
                    <div class="form-group">
                    	<label for="contactcomment">Your Message</label>
                        <textarea class="form-control" rows="5" name="msg" id="contactcomment" required></textarea>
                    </div>
                    <button type="submit" class="btn btn-info btn-block" onclick="return message()">Submit</button>
                </form>
            </div>
            <!--  //contact form grid ends here -->
        </div>
        <div class="col-lg-6 contact-bottom pl-5 mt-lg-0 mt-5">
            <!-- contact details grid1-->
            <div class="address">
            	<h5 class="pb-3 text-capitalize"><b>Address</b></h5>
            	<address>
                	<p class="c-txt">Rajdhani Complex, OfficeNo. A/408, 4th Floor,</p>
                	<p class="c-txt"> Near Shankar Maharaj Math</p>
                	<p class="c-txt">Pune - Satara Road, Pune-411043</p>
            	</address>
            </div>
            
            <!-- contact details grid2-->
            <div class="address my-5">
            	<h5 class="pb-3 text-capitalize"><b>phone</b></h5>
                <p>+91 9322790379</p>
            </div>
            
            <!-- contact details grid3 -->
            <div class="address mt-md-0 mt-3">
            	<h5 class="pb-3 text-capitalize"><b>Email</b></h5>
                 <p>
                     <a href="mailto:tejashitole7@gmail.com">tejashitole7@gmail.com</a>  <!-- Outlook link -->
                 </p>
             </div>
          
           <!-- //contact details row ends here -->
        </div>
    </div><br><br>
    <!-- contact map grid -->
    <div align="center">
    	<div class="map contact-right p-sm-10 px-3">
        	<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d387193.30591910525!2d-74.25986432970718!3d40.697149422113014!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sin!4v1523597153501" allowfullscreen></iframe>
    	</div>
    </div>
    <!--//contact map grid ends here-->
   </div>
 </div>          	
</body>
</html>