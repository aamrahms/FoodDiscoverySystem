var username="<%=Session.getAttribute['key']%>";
var main =function(){
	
		
	 $("#header").load("Header.html"); 
	 
	 $("#add").load("review.html");
	
		$("#sess").load("headSess.html"); 
		  
	
	 $("#footer").load("footer.html"); 
};
$(document).ready(main);