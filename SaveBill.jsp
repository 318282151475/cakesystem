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
    	
    	String name=request.getParameter("name");
    	String mob=request.getParameter("mob");
    	String email=request.getParameter("email");
    	String payMethod=request.getParameter("pay");
    	String ODate=request.getParameter("date1");
    	String DDate=request.getParameter("date2");
    	String state=request.getParameter("state");
    	String city=request.getParameter("city");
    	String DAddr=request.getParameter("addr");
    	
    	Class.forName("com.mysql.jdbc.Driver");
    	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cake","root","");
    	Statement st=con.createStatement();
    	
    	st.executeUpdate("insert into bill value('"+u1+"','"+name+"','"+mob+"','"+email+"','"+payMethod+"','"+ODate+"','"+DDate+"','"+state+"','"+city+"','"+DAddr+"')");
    	response.sendRedirect("Bill.jsp");
    	
    }
    catch(Exception ert)
    {
    	out.println(ert);
    }
    %>
</body>
</html>