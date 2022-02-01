<%@ page import="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import="com.mysql.jdbc.Driver.*" %>

<html>
<body>
<%
try
{
		
	String sno=request.getParameter("sno");
	Class.forName("com.mysql.jdbc.Driver") ;
	Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3309/food", "root", "root");
    Statement statement = connection.createStatement() ;
    
    //out.println("query executed");
 
   int i = statement.executeUpdate(" delete from search where sno='"+sno+"'" ) ; 
      
      	response.sendRedirect("listItems.jsp");
}
catch(Exception e)
{
	e.printStackTrace(); 
}
    	

%>
</body>
</html>