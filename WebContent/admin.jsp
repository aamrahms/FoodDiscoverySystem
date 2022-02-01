
<html>
<head>
<link type="text/css" rel="stylesheet" href="main.css"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
<script type="text/javascript" src="home.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.9.1/jquery-ui.min.js"></script></head>
<style>
	section{
		height:640px;
	}
	body{
	background-image:url("images/Echo_login_Icon.jpg");
	background-repeat:no-repeat;
	background-size:1500px 900px;
	
}
	nav>p>strong:first-letter{
		color:red;
		text-transform: uppercase;
	}
</style>
<body>

<header > 
<div class = "row">
<a href="home.html"><img id="logo"class="col-sm-2" src="images/cooltext190260875839452.gif"></a>

<nav class="col-sm-8 text-right">
<p><strong><%=session.getAttribute("key")%><a style="text-decoration:underlined;margin-left:20px" href="logout.jsp" >Logout?</a></strong></p>
</nav>
</div>

</header>

<section>
 <h3>Hello Admin!</h3>
 <p> Use your rights wisely.
 </p>
 <p> Do you want to list, edit, delete or add users? Click on List! </p><br>
 <a href="list.jsp"><button style="height:50px;width:100px;">LIST</button></a><br>
 <p> To add more cities to your website click on Add City </p><br>
  <a href="addCity.html"><button style="height:50px;width:100px;">ADD CITY</button></a>
 
 
  
</section>




<footer>
<div class="row">
  <div id="foot"> <small> &copy; 2016 Explorer</small> </div>

</div>
</footer>
</body>
</html>