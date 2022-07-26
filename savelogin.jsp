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
    	String u1=request.getParameter("username");
    	String p1=request.getParameter("password");
    	
    	session.setAttribute("u1", u1);
    	session.setAttribute("p1", p1);
    	
    	Class.forName("com.mysql.jdbc.Driver");
    	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cake","root","");
    	Statement st=con.createStatement();
    	
    	String status="";
    	
    	ResultSet rs;
    	rs=st.executeQuery("select * from login where username='"+u1+"' and password='"+p1+"' ");
    	
    	while(rs.next())
    	{
    		status=rs.getString("status");
    	}
    	
    	if(status.equals("c"))
    	{
    		response.sendRedirect("Customer.jsp");
    	}
    	else if(status.equals("a"))
    	{
    		response.sendRedirect("Admin2.jsp");
    	}
    	
    }
    catch(Exception e)
    {
    	out.println(e);
    }
    %>
</body>
</html>