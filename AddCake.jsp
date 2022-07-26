<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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


<script>
    function valid()
    {
    	if(document.form1.p0.value=="")
        {
            alert("Enter Product id");
            document.form1.p0.focus();
            return false;
        }
        if(document.form1.p1.value=="")
        {
            alert("Enter Product Type");
            document.form1.p1.focus();
            return false;
        }
        if(document.form1.p3.value=="")
        {
            alert("Enter Product Name");
            document.form1.p3.focus();
            return false;
        }
        if(document.form1.p4.value=="")
        {
            alert("Enter Product Units");
            document.form1.p4.focus();
            return false;
        }
        if(document.form1.p5.value=="")
        {
            alert("Enter Prduct Price");
            document.form1.p5.focus();
            return false;
        }
        if(document.form1.p6.value=="")
        {
            alert("Enter Product Image");
            document.form1.p6.focus();
            return false;
        }
        if(document.form1.p2.value=="")
        {
            alert("Enter Product Discount");
            document.form1.p2.focus();
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
      			<li><a href="AddCake.jsp">Add Cake</a></li>
      			<li><a href="sellReport.jsp">Sell Report</a></li>
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
    <h3 style="margin-left:10px">Product Entry Form</h3>
        <form action="savecake.jsp" method="post" name="form1" onsubmit="return valid()">
            <div class="panel-body">
                <div class="form-group">
                    <label class="control-label col-sm-2">Product id:</label>
                	<div class="col-sm-3">
                    	<input type="text" class="form-control" id="p0" name="p0">
                	</div>
            	</div><br><br>
                
                <div class="form-group">
                    <label class="control-label col-sm-2">Product Type:</label>
                	<div class="col-sm-3">
                    	<input type="text" class="form-control" id="p1" name="p1">
                	</div>
            	</div><br><br>
            	
            	
            	<div class="form-group">
                    <label class="control-label col-sm-2">Product Name:</label>
                	<div class="col-sm-3">
                    	<input type="text" class="form-control" id="p3" name="p3">
                	</div>
            	</div><br><br>
            	
            	<div class="form-group">
                    <label class="control-label col-sm-2">Product Units:</label>
                	<div class="col-sm-3">
                    	<input type="text" class="form-control" id="p4" name="p4">
                	</div>
            	</div><br><br>
            	
            	<div class="form-group">
                    <label class="control-label col-sm-2">Product Price in Rs:</label>
                	<div class="col-sm-3">
                    	<input type="text" class="form-control" id="p5" name="p5">
                	</div>
            	</div><br><br>
            	
            	<div class="form-group">
                    <label class="control-label col-sm-2">Product Image:</label>
                	<div class="col-sm-3">
                    	<input type="file" class="form-control" id="p6" name="p6">
                	</div>
            	</div><br><br>
            	
            	
            	<div class="form-group">
                    <label class="control-label col-sm-2">Product Discount:</label>
                	<div class="col-sm-3">
                    	<input type="text" class="form-control" id="p2" name="p2">
                	</div>
            	</div><br><br>

                <div style="margin-left: 160px;">
                    <button type="submit" class="btn btn-success">Save Product</button>
                </div><br><br>
            </div>
        </form>
    </div>
</div>
  

</body>
</html>