<%@ page import="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import="com.mysql.jdbc.Driver.*" %>
<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page import="org.apache.commons.codec.digest.DigestUtils" %>
<%@ page import ="javax.servlet.http.HttpServlet.*"%>
<%@ page import ="javax.servlet.http.HttpServletRequest.*" %>
<%@ page import ="javax.servlet.http.HttpServletResponse.*"%>

<html>	
<head>
<style>
input{
color:white;
}
</style>
</head>
<body>

<%
String total = request.getParameter("total");
String address =request.getParameter("address") ;
String date= request.getParameter("date") ;

out.println(total+address+date);

	%>
	
	
	

</body>
</html>
</html>





