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
</style>
  
<script>
    function valid()
    {
    	var t= document.form1.mob.value; 
    	
    	
    	if(document.form1.firstname.value == "")
    	{
    		alert("Enter firstname");
    		document.form1.firstname.focus();
    		return false;
    	}
    	
    	if(document.form1.lastname.value == "")
    	{
    		alert("Enter lastname");
    		document.form1.lastname.focus();
    		return false;
    	}
    	
    	 if(document.form1.email.value=="")
         {
             alert("Enter email ");
             document.form1.email.focus();
             return false;
         }
         else if(document.form1.email.value.indexOf('@')==-1)
         {
             alert("Use @ email correctly");
             document.form1.email.focus();
             return false;
         }
         else if(document.form1.email.value.indexOf('.')==-1)
         {
             alert("Use . email correctly");
             document.form1.email.focus();
             return false;
         } 
    	
    	if(document.form1.mob.value == "")
    	{
    		alert("Enter Mobile Number");
    		document.form1.mob.focus();
    		return false;
    	}
    	else if(!parseInt(t))
    	{
    		alert("Enter number correctly");
    		document.form1.mob.focus();
    		return false;
    	}
    	else if(((document.form1.mob.value.length)<10) || ((document.form1.mob.value.length)>10))
    	{
    		alert("Enter 10 digit number correctly");
    		document.form1.mob.focus();
    		return false;
    	}
    	
    	if(document.form1.user.value == "")
    	{
    		alert("Enter Username");
    		document.form1.user.focus();
    		return false;
    	}
    	
    	if(document.form1.pass.value == "")
    	{
    		alert("Enter Password");
    		document.form1.pass.focus();
    		return false;
    	}
    	
    	if(document.form1.birthdate.value == "")
    	{
    		alert("Enter Date Of Birth");
    		document.form1.birthdate.focus();
    		return false;
    	}
    	
    	if(document.form1.gender.value == "")
    	{
    		alert("Enter gender");
    		document.form1.gender.focus();
    		return false;
    	}
    	
    	if(document.form1.state.value == "")
    	{
    		alert("Enter state");
    		document.form1.state.focus();
    		return false;
    	}
    	
    	if(document.form1.city.value == "")
    	{
    		alert("Enter city");
    		document.form1.city.focus();
    		return false;
    	}
    	
    	if(document.form1.pin.value == "")
    	{
    		alert("Enter pin");
    		document.form1.pin.focus();
    		return false;
    	}
    	
    	if(document.form1.add.value == "")
    	{
    		alert("Enter add");
    		document.form1.add.focus();
    		return false;
    	}
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
      <li class="active"><a href="login.jsp">Sign In</a></li>
      <li><a href="registration.jsp">Registration</a></li>
    </ul>
  </div>
</nav><br><br><br>

<div class="container">
  <div class="panel panel-default">
    <div style="text-align: center;"><h2>Registration Form</h2></div>
    <h3 style="margin-left:10px">Personal Details</h3>
        <form action="saveregistration.jsp" method="post" name="form1" onsubmit="return valid()">
            <div class="panel-body">
                <div class="form-group">
                    <label class="control-label col-sm-1">Name:</label>
                	<div class="col-sm-3">
                    	<input type="text" class="form-control" id="name" placeholder="First name" name="firstname">
                	</div>
                	<div class="col-sm-3">
                    	<input type="text"  class="form-control" id="name" placeholder="Last name" name="lastname">
                	</div>
            	</div><br><br>


            	<div class="form-inline">
                	<div class="form-group col-sm-4">
                    	<label>Email:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    	<input type="text" class="form-control" id="email" placeholder="Email id" name="email" size="26">
               		</div>&nbsp;&nbsp;&nbsp;
                
                	<div class="form-group">
                    	<label>Mobile No:</label>
                    	<input type="text" class="form-control" id="mob" placeholder="Mobile No" name="mob" size="26">
                	</div>
            	</div><br>
            
            	<div class="form-inline ">
                	<div class="form-group col-sm-4">
                    	<label>Username:</label>&nbsp;&nbsp;&nbsp;&nbsp;
                    	<input type="text" class="form-control" id="user" placeholder="Username" name="user" size="26">
                	</div>&nbsp;&nbsp;&nbsp;
                
                	<div class="form-group">
                    	<label>Password:</label>
                    	<input type="password" class="form-control" id="pass" placeholder="Password" name="pass" size="26">
                	</div>
            	</div><br>
            
            	<div class="form-inline">
                	<div class="form-group col-sm-4">
                    	<label>Date of Birth:</label>
                    	<input type="date" class="form-control" id="birthdate" name="birthdate" >
                	</div>&nbsp;&nbsp;&nbsp;
                
                	<div class="form-group">
                    	<label>Gender:</label>&nbsp;&nbsp;
                    	<select name="gender" class="form-control">
                           <option selected="selected" value="">Select</option>
                           <option value="Male" >Male</option>
                           <option value="Female" >Female</option>
                           <option value="Other" >Other</option>
                        </select>
                    	
                	</div>
            	</div><br><br>
            
         		<h3>Additional Details</h3> 
             	<div class="form-inline">
                	<div class="form-group col-sm-4">
                    	<label>State:</label>&nbsp;&nbsp;&nbsp;&nbsp;
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
                	</div>&nbsp;&nbsp;&nbsp;
                
                	<div class="form-group">
                    	<label>City:</label>
                    	<input type="text" class="form-control" id="city" placeholder="City" name="city" size="26">
                	</div>
            	</div><br>
            
             	<div class="form-inline">
                	<div class="form-group col-sm-4">
                    	<label  for="email">Pincode:</label>&nbsp;&nbsp;&nbsp;&nbsp;
                    	<input type="text" class="form-control" id="pin" placeholder="Pincode" name="pin" size="26">
                	</div>&nbsp;&nbsp;&nbsp;
                
                	<div class="form-group">
                    	<label for="MbN">Full Address:</label>
                    	<input type="text" class="form-control" id="add" placeholder="Address" name="add" size="50">
                	</div>
            	</div><br>

             	<div style="text-align: center;">
            		<button type="submit" class="btn btn-success">Submit</button>
				</div>
            </div>
        </form>
    </div>
</div>
  

</body>
</html>