
<%@ page import="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import="com.mysql.jdbc.Driver.*" %>
<%@ page import ="javax.servlet.http.HttpServlet.*"%>
<%@ page import ="javax.servlet.http.HttpServletRequest.*" %>
<%@ page import ="javax.servlet.http.HttpServletResponse.*"%>


<html>	
<body>

<%
String username=session.getAttribute("key").toString();

try
	{	
		Class.forName("com.mysql.jdbc.Driver") ;
		Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3309/food", "root", "root");
		Statement statement = connection.createStatement() ;
		ResultSet rs ;
		
		//int i=statement.executeUpdate("update cart set username='aamrah'"); 
		
			int i=statement.executeUpdate("update cart set username='"+username+"'");		
			
			response.sendRedirect("place.jsp");
	
	
	}
	catch (Exception e)
	{
		e.printStackTrace();
	}
	

%>


</body>
</html>
</html>







