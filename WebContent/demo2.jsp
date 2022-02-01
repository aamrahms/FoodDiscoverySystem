<%@ page import="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import ="javax.servlet.http.HttpServlet.*"%>
<%@ page import ="javax.servlet.http.HttpServletRequest.*" %>
<%@ page import ="javax.servlet.http.HttpServletResponse.*"%>

<html lang="en">
<head>
  <title>online food</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
   <script type="text/javascript" src="script/jquery-1.11.3.js"></script>
 <script type="text/javascript" src="headfoot.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script type="text/javascript">
	function abc(a){
		r=confirm("Delete ? ");
		if(r===true)
			{
			
			window.location.assign('delete.jsp?id='+a );
			
			                                                                                                                                                                                      
			}
		else
			return false ;
	}
	</script>
  <style>
      .section{
          
      }
    .navbar {
      margin-bottom: 25px;
     border-radius: 0;
    }
    
  
     .jumbotron {
      margin-bottom: 0;
    }
   
    
	body{
		background-color: #ffccee
}
    
.jumbotron {
background-image: url(pics/website/jumbo.jpg);
background-size: cover;
height: 30%;
padding: 20px 15px;
text-align:center;
background-size:cover;
}

    

.jumbotron h1{
color: #006600
}
.jumbotron p{
color: #33fff9
}

table {
  border-collapse: separate;
  border-spacing: 20px 0;
}

tr,td{
padding:20px
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 100px;
height: 28px;
background-color: #ff0000;
}
tt{
	margin-top:20px;
}
  </style>
</head>
<body>
<section>
<div class="jumbotron">
     
    <h1> Online Food delivery</h1>
    <p>Eat Live Enjoy</p>
  </div>
</div>


<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
    </div>
    </nav>
<section>
 <table >
	<thead>
		<tr>
			<th colspan="12" style = "font-size:25px; padding-bottom:40px;padding-left:500px">List of Items! </th>
			<br><br>
			<td colspan="2" style=" padding-bottom:40px; padding-top:40px">Action <a href="addItem.html" style="color:#8B4513 ; padding-bottom:40px; padding-top:40px"><button >ADD!</button> </a>
			</td>
			 
		 </tr>
	</thead>
	<tbody>
		<tr>
			<td style="font-size:25px"><b>S.NO</b>
			</td>    
			<td style="font-size:25px"><b>Name</b>
			</td>  
			<td style="font-size:25px"><b>Category</b>
			</td>
			<td style="font-size:25px"><b>Image</b>
			</td> 
			<td style="font-size:25px"><b>Price</b>
			</td> 
			<td style="font-size:25px"><b>Availability</b>
			</td> 
		</tr>
<%
	try
	{
		Class.forName("com.mysql.jdbc.Driver") ;
		
		Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3309/food", "root", "root");
    	Statement statement = connection.createStatement() ;
    
    	//out.println("query executed");
    
   		 ResultSet resultset = statement.executeQuery(" select * from search " ) ;
   		 int sno;
   		 int i=1;
   		String name;
		while(resultset.next())
		{
			name=resultset.getString("name");
			%>
			<tr> 
			<td>
			<%=i%>
			</td>
			<td>
			<%=name %>
			
			</td>
			
			<td><%=resultset.getString("category") %>
			</td>
			<td><%=resultset.getString("pic") %>
			</td> 
			<td><%=resultset.getString("price") %>
			</td>
			<td><%=resultset.getString("status") %>
			</td>
			<td>
			<a href = "edit.jsp?item=<%=name %>" id="item">Edit</a>
			</td>
			<td>
			<a href = "listItems.jsp?item=<%=name %>" id="item" onClick="abc(<%=name%>)">Delete</a>
			</td>   
		 
		</tr>
		
		<%	
		i++; }
		%>
		
		<%
	
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
%>
		
    	
	
	</tbody>
</table>


  
</section>
<footer>
<div id="footer">
</div>
</footer>
</body>
</html>

