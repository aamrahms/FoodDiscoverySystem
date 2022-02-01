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
<body>

<%
String username= request.getParameter("username") ;
String salt = "il!ke#0me$$w!#h#hec0de$!" ;
String password=request.getParameter("password");

//out.print( DigestUtils.md5Hex( password ) );
 String digest = DigestUtils.md5Hex( password + salt ) ;//Calculates the MD5 digest and returns the value as a 32 character hex string.

/*
if(username=="admin" && password== "@12@34")
{
       
}*/
try
{
	if(username=="admin")
	{
			out.println("dgsg");
	}
       Class.forName("com.mysql.jdbc.Driver") ;
       Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3309/food", "root", "root");
    Statement statement = connection.createStatement() ;
    ResultSet rs ; 
    //out.println("query executed");
      ResultSet resultset = statement.executeQuery(" select * from recs where username='"+username+"'and digest='"+digest+"'" ) ; 
     
      //if a row exists
      
      if (resultset.next())
     	{
   	  	  rs = statement.executeQuery(" select * from recs where username='admin' and digest='"+digest+"'" ) ; 
   		   if(rs.next())
   	 		 {
   				session=request.getSession();
   				session.setAttribute("key", username);
				response.sendRedirect("listItems.jsp");
					
			}
				else{
					session=request.getSession();
					session.setAttribute("key", username);
					response.sendRedirect("websitelatest.jsp");
						
					}
							
   		   }
         
         
         
   	   
      else if (username == "admin")
      {
    	  %>
			<script>
   	  alert("YOU ARE NOT THE ADMIN! ");
   	  window.location.href="login.html";
   	  </script>
    		 <%
    	  } 
       else
       {
    	   %>
			<script>
   	   alert("INCORRECT USERNAME or PASSWORD! ");
   	   window.location.href="login.html";
      
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
