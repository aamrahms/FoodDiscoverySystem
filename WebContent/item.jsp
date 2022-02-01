<%@ page import="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import="com.mysql.jdbc.Driver.*" %>
<html>
<head>
<script type="text/javascript" src="script/jquery-1.11.3.js"></script>
 <script type="text/javascript" src="headfoot.js"></script>
 <link rel="stylesheet" href="style.css">
</head>
<style>

.row {
    display: flex;
    overflow: hidden;
}
ul#hor li{
display: inline;
}

</style>
<body >
<header>
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
%></header>
<section >

<% 
String category;
String pic;
String image ;
Class.forName("com.mysql.jdbc.Driver") ;
Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3309/food", "root", "root");
Statement statement = connection.createStatement() ;
 String sno =request.getParameter("sno");
 String status;
 ResultSet resultset = statement.executeQuery(" select * from search where sno='"+sno+"'" ) ;
 
 if(resultset.next())
 {	 
	 category=resultset.getString("category");
	 pic=resultset.getString("pic");
	 image="pics/"+category+"/"+pic ;
	 status=resultset.getString("status");
%>
	 
	 <div class="container">
  	<div class="row"></div>
<form action="addtocart.jsp" method="post" style="height:550px">
<div class="col-sm-7" style="background-color: white;">
	
	<img src="<%=image%>" style= "height:500px; width:550px">
	<input style="visibility: hidden" type="text"  name ="pic" value=" <%=image%>"  required>
</div>

<div class="col-sm-4" style="align:right;background-color: white; padding :44px; font-size:20px">
	Name : <input type="text"  name ="name" value="<%=resultset.getString("name")%>" readonly ><br><br>
	Price : <input type="text"  name ="price" value=" <%=resultset.getString("price")%>"  readonly><br><br>
	Availability status : <input type="text"  name ="status" value="<%=status%>" readonly><br><br>
	<%
		if(null==status)
		{
			%> <output>ITEM OUT OF STOCK!  </output><br>
			
			<%
			
		}
		else
		{
	%>
	Quantity : <input type="number" name="quantity" min=1 autofocus required><br><br>
	<ul id="hor">
	<li><input type="submit" value="Add to Cart"></li>
    </ul>
    <%
		}
    %>

	</form>
	</div>
<%
 }
%>
</div>
</div>
</section>

<footer>
<div id="footer"></div><br />
</footer>
</body>
</html>
