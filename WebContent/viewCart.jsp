<%@ page import="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import ="javax.servlet.http.HttpServlet.*"%>
<%@ page import ="javax.servlet.http.HttpServletRequest.*" %>
<%@ page import ="javax.servlet.http.HttpServletResponse.*"%>
<html>
<head>
<script type="text/javascript" src="script/jquery-1.11.3.js"></script>
 <script type="text/javascript" src="headfoot.js"></script>
 <link rel="stylesheet" href="style.css">
<style>
td+td:first-letter{
		
		text-transform: uppercase;
	}
</style>
</head>

<body>
<header><%
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
%></header>
<table>
<thead>
<h1 style=" align:center"><b> Cart </b></h1>
 </thead>
<tbody>


<%
String name;
String pic;
String price;
String quantity;

	try
	{
		Class.forName("com.mysql.jdbc.Driver") ;
		
		Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3309/food", "root", "root");
    	Statement statement = connection.createStatement() ;
    
    	
    
   		 ResultSet resultset = statement.executeQuery(" select * from cart  " ) ;
   		 int sno;
   		 int i=1;
   		
   			
   		
		while(resultset.next())
		{
			name=resultset.getString("name");
			price=resultset.getString("price");
			quantity=resultset.getString("quantity");
			%>
			
			<tr> 
			<td style=" font-size:40px; padding-top:0px;">
			<%=i %>
			</td>
			<td>
			
			<img style=" width:300px; height:300px" src="<%=resultset.getString("pic") %>">
			
			
			</td>
			
			<td style="margin-right:0px; padding:10px; font-size:20px;" >
			
			<%=name %> </br></br>
			Price : <%=price %></br></br>
			 
			Quantity : <%=quantity %></br></br>
			<%
			
			i++;
			%>		   
		 
		</tr>
		<tr>
		<td>
		<%
		}
   		
   		
		if(null == session.getAttribute("key"))
		{
			%>
			
			
			<button style="padding-right:0px; font-size: 20px;"><a style=" underline:none"  href="login.html">Place order </a></button>
		
			<%			
		}
		else
		{
			%>
			<button style="padding-right:0px; font-size: 20px;"><a style="underline:none" href="setuser.jsp">Place order </a></button>
			<%
			
		}
		%>
		</td>
		</tr>
		<%			
		
	
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
%>
		

</tbody>
</table>
<footer><div id="footer"></div></footer>
</body>

</html>