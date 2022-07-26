<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>cake.jsp</title>
</head>
<body>
    <%try
	{   
	    String u1=(String) session.getAttribute("u1");
	    String i=request.getParameter("price");
	    String j=request.getParameter("quantity");
	    
	    int a=Integer.parseInt(i);
	    int b=Integer.parseInt(j);
	    
	    int total=a*b;
	    		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cake","root","");
		Statement st = con.createStatement();
		
		st.executeUpdate("update cart set Quantity='"+b+"', Total='"+total+"' where Username='"+u1+"' and Name='"+request.getParameter("name")+"' ");
		response.sendRedirect("AddToCart.jsp");
		con.close();
	}
	catch(Exception e)
	{
		out.println(e);
	}
	%>
</body>
</html>