# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready(function(){

	// Add new posts
	$(".new-post").click(function() {
		debugger
		form_data = $("#new_post").serialize();		
		$.ajax({  
		  type: "POST",
		  url: "/posts",
		  data: form_data    
		});	
	});

	// Edit posts
	$(".edit-post").click(function() {
	var id = $(this).val();
	debugger
		$.ajax({
			type: "GET",
		  url: "/posts/"+id+"/edit",
		  data: {  _method:'get' }
		});
	});

});