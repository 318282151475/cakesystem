<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>cake.com</title>
</head>
<body>
    <%try
	{   
	    String u1=(String) session.getAttribute("u1");
	    
	    Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cake","root","");
		Statement st = con.createStatement();
		
		st.executeUpdate("insert into cart values('"+u1+"','"+request.getParameter("pName")+"','"+request.getParameter("pPrice")+"','"+request.getParameter("quantity")+"','"+request.getParameter("Total")+"')");
		
		response.sendRedirect("AddToCart.jsp");
		con.close();
	}
	catch(Exception e)
	{
		out.println(e);
	}
	%>
	<p>saved</p>
</body>
</html>