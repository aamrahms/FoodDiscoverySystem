<%@ page import="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import="com.mysql.jdbc.Driver.*" %>
<%@ page import="org.apache.commons.lang3.StringUtils" %>

<!DOCTYPE html >
<html>
<head>
	<title>Menu</title>
	


<style>
	td:first-letter{
		color:red;
		text-transform: uppercase;
	}
</style>
</head>
</head>
<body >
<header > 


</header>

<section>
 
 <table  >
	
			
		
	<tbody>
			
		
<%
String category=request.getParameter("category") ;
String sno ;
%>
<tr><% out.println("Search results") ;%> </tr><br>
		
<tr><% out.println(category+"s") ;%> </tr>
	
<%

	try
	{
		Class.forName("com.mysql.jdbc.Driver") ;
		
		Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3309/food", "root", "root");
    	Statement statement = connection.createStatement() ;
 

    	 ResultSet resultset = statement.executeQuery(" select * from search where category='"+category+"' order by name asc") ;
        	

		while(resultset.next())
		{
		
			%>
			
			<tr> 
			
			<td>

			<img src="pics/<%=resultset.getString("category") %>/<%=resultset.getString("pic") %>"  >
		</td>
			
			<td style="font-size:35px"><%=resultset.getString("name") %>
			</td>
			 
			<td>
		<%
		sno= resultset.getString("sno"); %>
		
		
		<button><a href ="item.jsp?sno=<%=sno %>" id="sno">Select</a></button>
		
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
	</tbody>
		</table>
		<br>
		<br>
		

		
    	
	
  
</section>




<footer>

</footer>


</body>
</html>
