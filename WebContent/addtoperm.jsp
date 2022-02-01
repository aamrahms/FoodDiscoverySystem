
<%@ page import="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import="com.mysql.jdbc.Driver.*" %>
<%@ page import ="javax.servlet.http.HttpServlet.*"%>
<%@ page import ="javax.servlet.http.HttpServletRequest.*" %>
<%@ page import ="javax.servlet.http.HttpServletResponse.*"%>
<html>	
<body>

<%

String username=session.getAttribute("key").toString();
String price;
String quantity ;
String name;
String pic;
int sno=0;
int order=0;

try
	{	
		Class.forName("com.mysql.jdbc.Driver") ;
		Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3309/food", "root", "root");
		Statement statement = connection.createStatement() ;
		Statement statement1 = connection.createStatement() ;
		Statement statement2 = connection.createStatement() ;
		
		
		//out.println("1123") ; 
			 ResultSet resultset = statement.executeQuery(" select * from cart  " ) ;
			 ResultSet rs= statement1.executeQuery("select max(order_no) from receipt where username='"+username+"'") ; 
			   while(rs.next())
			   {
				    order=rs.getInt("max(order_no)");
				    		
				   
			   }
   		 
   		
		while(resultset.next())
		{
			name=resultset.getString("name");
			price=resultset.getString("price");
			quantity=resultset.getString("quantity");
			pic=resultset.getString("pic");
			int i=statement2.executeUpdate("insert into permCart(username,name,price,quantity,pic,order_no) values('"+username+"' ,'"+name+"' , '"+price+"' , '"+quantity+"','"+pic+"','"+order+"')"); 
			out.print("hhhh");
			
		}

		response.sendRedirect("deletefromcart.jsp");
		
	
	
	}
	catch (Exception e)
	{
		e.printStackTrace();
	}
	

%>


</body>
</html>
</html>





