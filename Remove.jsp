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
    	 String name=request.getParameter("name");
    	 String price=request.getParameter("price");
    	 
    	 Class.forName("com.mysql.jdbc.Driver");
    	 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cake","root","");
    	 Statement st=con.createStatement();
    	 
    	 st.executeUpdate("delete from cart where Name='"+name+"' and Price='"+price+"'");
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