
<%@ page import="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import="com.mysql.jdbc.Driver.*" %>

<html>	
<body>

<%
String price = request.getParameter("price");
String quantity =request.getParameter("quantity") ;
String name= request.getParameter("name") ;
String pic= request.getParameter("pic") ;


try
	{	
		Class.forName("com.mysql.jdbc.Driver") ;
		Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3309/food", "root", "root");
		Statement statement = connection.createStatement() ;
		ResultSet rs ;
		
		//out.println("1123") ; 
		int j=statement.executeUpdate("create table if not exists cart (sno int primary key auto_increment,username text,name text,price int,quantity int,pic varchar(50))");
		int i=statement.executeUpdate("insert into cart (name,price,quantity,pic)" + "values('"+name+"' , '"+price+"' , '"+quantity+"','"+pic+"')"); 
		response.sendRedirect("viewCart.jsp");
			
			
			
		
	
	
	}
	catch (Exception e)
	{
		e.printStackTrace();
	}
	

%>


</body>
</html>
</html>





