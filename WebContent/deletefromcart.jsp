<%@ page import="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import="com.mysql.jdbc.Driver.*" %>

<html>
<body>
<%
try
{
	int sno=0;
	String username=session.getAttribute("key").toString();

	
	
	
	Class.forName("com.mysql.jdbc.Driver") ;
	Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3309/food", "root", "root");
    Statement statement = connection.createStatement() ;
    
   int i = statement.executeUpdate(" drop table cart" ) ; 
   ResultSet resultset= statement.executeQuery("select max(order_no) from receipt where username='"+username+"'") ; 
   while(resultset.next())
   {
	    sno=resultset.getInt("max(order_no)");
	    		
	   
   }
	response.sendRedirect("receipt.jsp?sno="+sno);
   //response.sendRedirect("demo.jsp?sno="+sno);
   
      
      	
}
catch(Exception e)
{
	e.printStackTrace(); 
}
    	

%>
</body>
</html>