<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <%try
    {
	    String u1=(String) session.getAttribute("u1");
	    
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cake","root","");
		Statement st = con.createStatement();
		Statement st1 = con.createStatement();
		
		st.executeUpdate("delete from cart where username='"+u1+"'");
		st1.executeUpdate("delete from bill where username='"+u1+"'");
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