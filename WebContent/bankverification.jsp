<%@ page import="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import="com.mysql.jdbc.Driver.*" %>
<%@ page import ="javax.servlet.http.HttpServlet.*"%>
<%@ page import ="javax.servlet.http.HttpServletRequest.*" %>
<%@ page import ="javax.servlet.http.HttpServletResponse.*"%>
<%@ page import="org.apache.commons.lang3.StringUtils" %>

<%@ page import="org.apache.commons.codec.digest.DigestUtils" %>


<%--= Class.forName("com.mysql.jdbc.Driver") --%>
<html>
<head>

</head>
<body>

<%
String username= request.getParameter("username") ;
String salt = "il!ke#0me$$w!#h#hec0de$!" ;
String password=request.getParameter("password");
String user=session.getAttribute("key").toString();
//out.print( DigestUtils.md5Hex( password ) );
 String digest = DigestUtils.md5Hex( password + salt ) ;//Calculates the MD5 digest and returns the value as a 32 character hex string.
 String total = request.getParameter("total");
 String address =request.getParameter("address") ;
 String date= request.getParameter("date") ;


/*
if(username=="admin" && password== "@12@34")
{
       
}*/
try
{
	
       Class.forName("com.mysql.jdbc.Driver") ;
       Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3309/food", "root", "root");
    Statement statement = connection.createStatement() ;
    ResultSet rs ; 
    //out.println("query executed");
      ResultSet resultset = statement.executeQuery(" select * from recs where username='"+username+"'and digest='"+digest+"'" ) ; 
     
      //if a row exists
      
      if (resultset.next())
     	{
    	  
    	  int i=statement.executeUpdate("insert into receipt (username,total,date,address)" + "values('"+user+"' , '"+total+"' , '"+date+"','"+address+"')"); 
    	  %>
  		<script>
  	alert("<%=username%>");


  		 </script>
  	<%
    	  response.sendRedirect("addtoperm.jsp");			
   		}
         
       else
       {
    	   %>
			<script>
   	   alert("INCORRECT USERNAME or PASSWORD! ");
   	   
      
     		 </script>
     	 <%
   }
     
     resultset.close() ;

}
catch(Exception e)
{
       e.printStackTrace(); 
}

%>


</body>
</html>
