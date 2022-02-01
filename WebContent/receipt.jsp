
<%@ page import="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import="com.mysql.jdbc.Driver.*" %>
<%@ page import ="javax.servlet.http.HttpServlet.*"%>
<%@ page import ="javax.servlet.http.HttpServletRequest.*" %>
<%@ page import ="javax.servlet.http.HttpServletResponse.*"%>


<html>	
    <head>
    <script type="text/javascript" src="plc.js"></script>
    
    <link type="text/css" rel="stylesheet" href="style.css"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
	<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.9.1/jquery-ui.min.js"></script>
	<script type="text/javascript" src="http://www.clubdesign.at/floatlabels.js"></script>
	<script type="text/javascript" src="script/jquery-1.11.3.js"></script>
     <script type="text/javascript" src="headfoot.js"></script>
    
    <style>
            
            .bx {
    width: 500px;
    height: auto;
    padding: 10px;
    border: 5px solid gray;
    margin: 0;
}
        </style>
    </head>
    
<body>
<header>
<div id="sess"></div>
</header>
<%
String sno = request.getParameter("sno");
String username=session.getAttribute("key").toString();
int order,i=1;
try{
	Class.forName("com.mysql.jdbc.Driver") ;
	Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3309/food", "root", "root");
	Statement statement = connection.createStatement() ;
	 String item =  request.getParameter("item");
	 
	 ResultSet resultset = statement.executeQuery(" select * from receipt where username='"+username+"' and order_no='"+sno+"'" ) ; 
	 if(resultset.next())
	 {
		 order=resultset.getInt("order_no");
		 %>
                 <div class="bx" style="margin:auto">
                  <label><b style="margin-left :25%"> Receipt </b></label> <br><br>
                 <label><center>Order No : <%=order %> </center></label> <br>
                 <label><center>Total Amount : <%=resultset.getInt("total")%></center> </label><br>
                 <label><center>Expected delivery date : <%=resultset.getString("date")%></center></label> <br>
                <label><center>Address :<%=resultset.getString("address")%></center></label><br>
                 
		<%
		 ResultSet rs = statement.executeQuery(" select name from permCart where username='"+username+"' and order_no='"+order+"'" ) ; 
		while(rs.next())
		{
			
			rs.getString("name");
			i++;
		}
		
	 }
	 else
	 {
		 out.println("order lost");
	 }
}
catch(Exception e)
{
	e.printStackTrace();
}
%>
</div>
</body>
<footer>
    <div id="footer"></div>
</footer>
</html>