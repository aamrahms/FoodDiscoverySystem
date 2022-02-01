<%@ page import="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import="com.mysql.jdbc.Driver.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

String name= request.getParameter("name") ;
try
{
	
       	Class.forName("com.mysql.jdbc.Driver") ;
       	Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3309/food", "root", "root");
    	Statement statement = connection.createStatement() ;
    
    	ResultSet resultset = statement.executeQuery(" select * from reg where name='"+name+"'");
    	

		while(resultset.next())
		{
			%><tr> 
			
			<td><%=resultset.getString("name") %>"  >
		</td>
		<td><%=resultset.getString("email") %>"  >
		</td>
		</tr>
		<tr> 
			
			<td><%=resultset.getString("contact") %>"  >
		</td>
		</tr>
		<tr>
		<td><%=resultset.getString("dob") %>"  >
		</td>
		<td><%=resultset.getString("doj") %>"  >
		</td>
		</tr>
		
		
   		
   		
   		<%	
   			
   		}
		
		
		
		
					
}
catch(Exception e)
{
       e.printStackTrace(); 
}

%>


</body>
</html>