
<%@ page import="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import="com.mysql.jdbc.Driver.*" %>
<%@ page import ="javax.servlet.http.HttpServlet.*"%>
<%@ page import ="javax.servlet.http.HttpServletRequest.*" %>
<%@ page import ="javax.servlet.http.HttpServletResponse.*"%>
<html>	
<body>

<%

String username="aamrah";//session.getAttribute("key").toString();
String total =request.getParameter("total") ;
String date= request.getParameter("date") ;
String address= request.getParameter("address") ;
int sno=0;

try
	{	
		Class.forName("com.mysql.jdbc.Driver") ;
		Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3309/food", "root", "root");
		Statement statement = connection.createStatement() ;
		ResultSet rs ;
		
		//out.println("1123") ; 
		
			int i=statement.executeUpdate("insert into receipt (username,total,date,address)" + "values('"+username+"' , '"+total+"' , '"+date+"','"+address+"')"); 
			response.sendRedirect("addtoperm.jsp");
			   
			
			
		
	
	
	}
	catch (Exception e)
	{
		e.printStackTrace();
	}
	

%>


</body>
</html>
</html>





