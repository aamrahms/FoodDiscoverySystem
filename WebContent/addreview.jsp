
<%@ page import="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import="com.mysql.jdbc.Driver.*" %>
<%@ page import ="javax.servlet.http.HttpServlet.*"%>
<%@ page import ="javax.servlet.http.HttpServletRequest.*" %>
<%@ page import ="javax.servlet.http.HttpServletResponse.*"%>

<html>	
<body>

<%
String username =session.getAttribute("key").toString();
String review =request.getParameter("review") ;
String rating =request.getParameter("rating") ;
	try
	{	
		Class.forName("com.mysql.jdbc.Driver") ;
		Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3309/food", "root", "root");
		Statement statement = connection.createStatement() ;
		ResultSet rs ;
		ResultSet resultset = statement.executeQuery(" select * from recs where username='"+username+"'" ) ;  
		
		
			int i=statement.executeUpdate("insert into review values('"+username+"' , '"+review+"', '"+rating+"')"); 
			response.sendRedirect("websitelatest.jsp");
	
	}
	catch (Exception e)
	{
		e.printStackTrace();
	}
	

%>


</body>
</html>
</html>





