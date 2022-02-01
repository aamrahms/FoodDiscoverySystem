<!DOCTYPE html>
<html lang="en">
<head>
  <title>online food</title>
  
  <script type="text/javascript" src="script/jquery-1.11.3.js"></script>
 <script type="text/javascript" src="headfoot.js"></script>
 <link rel="stylesheet" href="style.css">
  <meta charset="utf-8">
  <link rel="stylesheet" type="text/css" href="style.css">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  section{
	position:fixed;
	top : 50%;
	
	
}
.jumbotron {
background-image: url(pics/website/jumbo.jpg);
background-size: cover;
height: 30%;
padding: 20px 15px;
text-align:center;
background-size:cover;
}
    button
{
	display: block;
	font-size: 1.1em;
	font-weight: bold;
	text-transform: uppercase;
	padding: 10px 15px;
	margin-left: 0;
	color: #ccc;
	background-color: #555;
	background: -webkit-linear-gradient(#888, #555);
	background: linear-gradient(#888, #555);
	border: 0 none;
	border-radius: 3px;
	text-shadow: 0 -1px 0 #000;
	box-shadow: 0 1px 0 #666, 0 5px 0 #444, 0 6px 6px rgba(0,0,0,0.6);
	cursor: pointer;
  </style>
</head>
<body>
<%
if(null == session.getAttribute("key"))
{
	%>
	<div id="header"></div>
	<% 
	}	
else
{
	%>
	<div id="sess"></div>
	
	<%
	
}
%>
<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
    <li data-target="#myCarousel" data-slide-to="3"></li>
  </ol>

  <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="pics/website/C1.jpg" alt="Chania" width="460" height="345">
      </div>

      <div class="item">
        <img src="pics/website/C2.jpg" alt="Chania" width="460" height="345">
      </div>
    
      <div class="item">
        <img src="pics/website/C3.png" alt="Flower" width="460" height="345">
      </div>

      <div class="item">
        <img src="pics/website/C5.jpg" alt="Flower" width="460" height="345">
      </div>
    </div>  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>	
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

<div class="review">
<a href="showreview.jsp"><button >Reviews</button></a>
<%
if(null != session.getAttribute("key"))
{
	%>
	<a href="addreview.html"><button style="margin-left:90%;display:flex" >Leave Review</button></a>
	<% 
	}
%>

</div>

<footer>
<div id="footer">
</div>
</footer>
</body>
</html>

