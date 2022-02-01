<!DOCTYPE html>
<html >
  <head>
    <meta charset="UTF-8">
    <title>Daily UI #2</title>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,800,300' rel='stylesheet' type='text/css'>    
        <link rel="stylesheet" href="netbanking.css">
</head>

  <body>
  
<%
String total = request.getParameter("total");
String address =request.getParameter("address") ;
String date= request.getParameter("date") ;
String city= request.getParameter("city") ;
String state= request.getParameter("state");

%>
    <div class="wrapper">
	<h1 class="box-title">Checkout</h1>
		
	<form id="payment" action="bankverification.jsp">
		<div class="form-el">
		<label>Bank</label>
			<select name="bank">
				<option>SBI </option>
				<option>OBC </option>
				<option>HDFC </option>
			</select>
			<label>User Name</label>
			<input name="username" type="text" required>
			<input name="total" type="hidden" value="<%=total%>"required>
			<input name="address" type="hidden" value="<%=address%>"required>
			<input name="date" type="hidden" value="<%=date%>"required>
			
		</div>
				<div class="form-el col-2">
			<label>Password</label>
			<input name="password" type="Password" required> <br>
			
		</div>	
		<div class="form-el cf">
			<button form="payment"><svg id="padlock" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" x="0px" y="0px" width="512px" height="512px" viewBox="0 0 512 512" enable-background="new 0 0 512 512" xml:space="preserve">
<path id="lock-18-icon" d="M256,193.663c-73.85,0-133.717,59.867-133.717,133.717S182.15,461.097,256,461.097  c73.852,0,133.717-59.867,133.717-133.717S329.852,193.663,256,193.663z M275.381,329.845c-4.387,4.076-6.881,9.795-6.881,15.785  v22.941h-23V345.63c0-5.986-2.496-11.711-6.881-15.785c-5.302-4.93-8.619-11.963-8.619-19.773c0-14.912,12.088-27,27-27  s27,12.088,27,27C284,317.882,280.683,324.915,275.381,329.845z M204.833,171.831c-18.272,6.021-35.095,15.07-50,26.812v-47.074  c0-55.508,45.159-100.666,100.667-100.666s100.667,45.158,100.667,100.666v46.301c-14.896-11.549-31.688-20.461-50-26.363v-19.938  c0-27.938-22.729-50.666-50.667-50.666s-50.667,22.729-50.667,50.666V171.831z"/>
</svg>Pay Now</button>
		</div>
	</form>
</div>
    
    
    
    
  </body>
</html>
