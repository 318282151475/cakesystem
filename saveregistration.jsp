<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>cake.com</title>
</head>
<body>
	<%try
	{
	    String u1=request.getParameter("user");
		String p1=request.getParameter("pass");
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cake","root","");
		Statement st = con.createStatement();
		Statement st1 = con.createStatement();
		
		String status="c";
		st.executeUpdate("insert into login values('"+u1+"','"+p1+"','"+status+"')");
		st1.executeUpdate("insert into registration values('"+u1+"','"+request.getParameter("firstname")+"','"+request.getParameter("lastname")+"','"+request.getParameter("email")+"','"+request.getParameter("mob")+"','"+request.getParameter("birthdate")+"','"+request.getParameter("gender")+"','"+request.getParameter("state")+"','"+request.getParameter("city")+"','"+request.getParameter("pin")+"','"+request.getParameter("add")+"')");
		response.sendRedirect("login.jsp");
		con.close();
	}
	catch(Exception e)
	{
		out.println(e);
	}
	%>
</body>
</html>