<%@ page import="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import="com.mysql.jdbc.Driver.*" %>

<html>
    <head>
        <link type="text/css" rel="stylesheet" href="style.css"/>
        <script type="text/javascript" src="plc.js"></script>
 		<script type="text/javascript" src="headfoot.js"></script>
 		
 
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
	 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
<script type="text/javascript" src="script/jquery-1.11.3.js"></script> 
<style>
     
     .centered-form{
	margin-top: 60px;
}

.centered-form .panel{
	background: rgba(255, 255, 255, 0.8);
	box-shadow: rgba(0, 0, 0, 0.3) 20px 20px 20px;
}

label.label-floatlabel {
    font-weight: bold;
    color: #46b8da;
    font-size: 11px;
}
 </style>

    </head>
   
    <body>
    <header > 
    <div id="header"></div>
</header>
        
        <%
try{

      

Class.forName("com.mysql.jdbc.Driver") ;
Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3309/food", "root", "root");
Statement statement = connection.createStatement() ;

 ResultSet resultset = statement.executeQuery(" select sum(price) from cart" ) ;
 
 if(resultset.next())
 {	 

%>
	
        
<div class="container">
        <div class="row centered-form">
        <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
        	<div class="panel panel-default">
        		<div class="panel-heading">
			    		<h3 class="panel-title">Place Order</h3>
			 			</div>
			 			<div class="panel-body">
			    		<form action="payment.jsp" method="post">
			    			<div class="row">
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					
                                      Total Cost <input type="text" name="total" value="<%=resultset.getString("sum(price)")%>"  class="form-control input-sm floatlabel" readonly>
			    					
			    				</div>
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						Preparation time <input type="text" name="time"  class="form-control input-sm" placeholder=" 5 hours(max)" disabled>
			    					</div>
			    				</div>
			    			</div>

			    			<div class="form-group">
			    				<input type="date" name="date" id="date" class="form-control input-sm" placeholder="Expected delivery Date" required>
			    			</div>

			    			<div class="row">
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						<input type="text" name="address" id="address" class="form-control input-sm" placeholder="Address" required>
			    					</div>
			    				</div>
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						<input type="text" name="city" id="city" class="form-control input-sm" placeholder="City" required>
			    					</div>
			    				</div>
                                                    
                                                        <div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						<input type="text" name="state" id="state" class="form-control input-sm" placeholder="State" required>
			    					</div>
			    				</div>
			    			</div>
			    			
			    			<input type="submit" value="Place Order" class="btn btn-info btn-block">
			    		
			    		</form>
			    	</div>
	    		</div>
    		</div>
    	</div>
    </div>
                                                                    <% }
 }
	catch (Exception e)
	{
		e.printStackTrace();
	}
	%>
    </body>
    <footer><div id="footer"></div></footer>
</html>