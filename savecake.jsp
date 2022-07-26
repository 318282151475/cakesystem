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
	    String u1=(String) session.getAttribute("u1");
	    
	    String pName=request.getParameter("p3");
	    String pPrice=request.getParameter("p5");
	    
	    session.setAttribute("pName", pName);
	    session.setAttribute("pPrice", pPrice);
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cake","root","");
		Statement st = con.createStatement();
		
		st.executeUpdate("insert into product values('"+u1+"', '"+request.getParameter("p0")+"','"+request.getParameter("p1")+"','"+pName+"','"+request.getParameter("p4")+"','"+pPrice+"','"+request.getParameter("p6")+"','"+request.getParameter("p2")+"' )");
		response.sendRedirect("Admin2.jsp");
		con.close();
	}
	catch(Exception e)
	{
		out.println(e);
	}
	%>
	
</body>
</html>