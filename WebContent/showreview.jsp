<%@ page import="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import="com.mysql.jdbc.Driver.*" %>
<%@ page import="org.apache.commons.lang3.StringUtils" %>

<!DOCTYPE html >
<html>
<head>
	<title>Reviews</title>
<script type="text/javascript" src="script/jquery-1.11.3.js"></script>
 <script type="text/javascript" src="headfoot.js"></script>
 <link rel="stylesheet" href="style.css">	

<style>
            
            .bx {
    width: 500px;
    height: auto;
    padding: 10px;
    border: 5px solid black;
    margin: 30px;
    margin-left: 30%;

}
        </style>

</head>
<body >
<header > 
<%
if(null == session.getAttribute("key"))
{
	%>
	<div id="header"></div>
	<% 
	}	
else
{
	%>
	<div id="sess"></div>
	
	<%
	
}
%>
</header>

<section>
<h1>Reviews!</h1> 
				
<%


	try
	{
		Class.forName("com.mysql.jdbc.Driver") ;
		
		Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3309/food", "root", "root");
    	Statement statement = connection.createStatement() ;
    
		ResultSet resultset = statement.executeQuery("select * from review") ;
    		
		
			while(resultset.next())
			{
				%>
			<div class=bx>
			<label style="text-align: left"><b>Username :</b></label> <%=resultset.getString("username") %> <br> 
			 
			<label><b>Review : </b> <%=resultset.getString("review") %><br>
			<b>Rating : </b><%=resultset.getString("rating") %><br><br>
			</div>
			<%
			
			
			}
		
					
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
%>
		
    	
	
  
</section>




<footer>
<div id="footer">
</div></footer>

</body>
</html>
