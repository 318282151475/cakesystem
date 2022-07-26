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
	    Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cake","root","");
		Statement st = con.createStatement();
		
		st.executeUpdate("insert into message values('"+request.getParameter("name")+"','"+request.getParameter("email")+"','"+request.getParameter("msg")+"')");
		response.sendRedirect("Customer.jsp");
		con.close();
	}
	catch(Exception e)
	{
		out.println(e);
	}
	%>
</body>
</html>