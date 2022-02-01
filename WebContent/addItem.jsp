
<%@ page import="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import="com.mysql.jdbc.Driver.*" %>
<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page import="org.apache.commons.codec.digest.DigestUtils" %>
<%@ page import ="javax.servlet.http.HttpServlet.*"%>
<%@ page import ="javax.servlet.http.HttpServletRequest.*" %>
<%@ page import ="javax.servlet.http.HttpServletResponse.*"%>

<html>	
<body>

<%
String sno = request.getParameter("sno");
String name = request.getParameter("name");
name= name.toLowerCase();
String category =request.getParameter("category") ;
String pic= request.getParameter("pic") ;
String status= request.getParameter("status") ;
String price= request.getParameter("price") ;

try
	{	
		Class.forName("com.mysql.jdbc.Driver") ;
		Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3309/food", "root", "root");
		Statement statement = connection.createStatement() ;
		ResultSet rs ;
		
		 
			int i=statement.executeUpdate("insert into search (name,category,pic,status,price) values('"+name+"' , '"+category+"' ,'"+pic+"','"+status+"','"+price+"')"); 
			response.sendRedirect("listItems.jsp");		
	
	}
	catch (Exception e)
	{
		e.printStackTrace();
	}
	

%>


</body>
</html>
</html>





