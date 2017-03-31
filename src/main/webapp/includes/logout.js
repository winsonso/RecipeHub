<script>
$(function() {

	

	
	//grabbing sign out button
  	var logOutButton = $('#logoutbutton');
        
        console.log("logout button")
  	


	$(logOutButton).click(function(){

		$.ajax({
			type: 'POST',
			url: "Logout", 
		})
		.done(function(response) {
		window.location.href =  "index.jsp";
		
		 })
	
	
	});

  
});

</script>
