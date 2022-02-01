<%@ page import="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import="com.mysql.jdbc.Driver.*" %>
<html>
<head>

<body >

<header > 

</header>

<section >

<% 

Class.forName("com.mysql.jdbc.Driver") ;
Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3309/food", "root", "root");
Statement statement = connection.createStatement() ;
 String item =  request.getParameter("item");
 ResultSet resultset = statement.executeQuery(" select * from search where name='"+item+"'" ) ; 
 if(resultset.next())
 {	 

%>
<table style="margin:auto">
<br><br><thead>
		<tr>
			<th >Edit! </th>
			 
		 </tr>
	</thead>

<tbody>

<form action= "editSet.jsp" method="POST" >
<tr><td><b>
    SNo </b> </td><td>:</td> 
  <td><input type = "text" name ="sno" value=<%=resultset.getString("sno")%>  required><br><br></td>
  </tr>
<tr><td><b>
    Name  </b> </td><td>:</td> 
  <td><input type="text"  name ="name" value="<%=resultset.getString("name")%>" autofocus required><br><br></td>
  </tr>
<tr>
<td><b>Category </b> </td><td>:</td> 
  <td><input type = "text" name= "category" value=<%=resultset.getString("category")%> required> <br/><br/></td></tr>
  <tr>
     <td><b>Image </b> </td><td>:</td> 
    <td><input type = "text" name ="pic" value=<%=resultset.getString("pic")%> required "><br/><br/></td> </tr>
    <tr><td><b>
    Availability Status  </b> </td><td>:</td> 
  <td><input type = "text" name ="status" value=<%=resultset.getString("status")%>  required><br><br></td>
  </tr>
  <tr><td><b>
    Price  </b> </td><td>:</td> 
  <td><input type = "text" name ="price" value=<%=resultset.getString("price")%>  required><br><br></td>
  </tr>
  <tr> 
  <tr><td><br/> <input type = "submit" value="Edit!" style="color:black"> </td></tr>
    
 </tbody> 
</table>

</form> 
<%
 }
%>

</section>




<footer>

</footer>
</body>
</html>
