<%@ page import="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import="com.mysql.jdbc.Driver.*" %>

<!DOCTYPE html >
<html>
<head>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<title>Add a Friend</title>
<script type="text/javascript" src="script/jquery-1.11.3.js"></script>
<script>
function hiding()
{
	var $t=$('tr');
    t.hide();
	}
$(document).ready(hiding);
$(document).ready(function (){
    $("#search").keyup(function()
			{
        		$('tr').has("td:contains(" + val + ")").show();
			});
	
});

$("#search").click(function() {
    var val = $.trim(this.value);
    if (val === "")
        $rows.show();
    else {
        $rows.hide();
        $rows.has("td:contains(" + val + ")").show();
    }
});

</script>
<style>
.main{
	border: 2px solid black;
	border-radius: 8px;
}
td{
	padding:5px;
	
}
.main{
	}
</style>
</head>
<body>

<ul class="nav navbar-nav navbar-center" style="margin-left:20%;padding:40px;">
     <li>
     	<form id="search"  action="search.jsp" method="post">
             <input  name="search" id="search" type="text" style="width:600px; margin-top: 20px" placeholder="Search" required>
             <button type="submit" class="btn btn-xs btn-danger" form="search" >
            <span class="glyphicon glyphicon-search" style="height:23px;width:23px"></span></button>
        </form>
     </li>
</ul>
<section>
 
 <table  >
	<tbody>
	<b><tr style="margin-left:10px;font-size:80px">Search results for  </tr></b>
					
<%

String sno ;
			

	try
	{
		
		Class.forName("com.mysql.jdbc.Driver") ;		
		Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3309/tracker", "root", "root");
    	Statement statement = connection.createStatement() ;  	
    	ResultSet resultset = statement.executeQuery(" select * from recs order by first asc") ;
           	
   			while(resultset.next())
   			{
   				
   			%>
   		
   			<tr class="main"> 
   			   			
   			<td><%=resultset.getString("first") %> 
   			</td>
   			 
   			<td><%=resultset.getString("last") %>
   			</td>
   		
   		</tr>
   			<tr>
   			<td>
   			<%
   			
   			out.println(resultset.getString("username")); %> 
   			</td>
   			</tr>
   		
   		<%	
   			} 
      		 
		%>
		</tbody>
		</table>
		<br>
		<br>
		<%					
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
%>
		
    	
	
  
</section>

</body>
</html>
