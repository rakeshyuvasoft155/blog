# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/



// $(document).ready(function() {
//   if ($('.pagination').length) {
//     $(window).scroll(function() {
//       var url = $('.pagination .next_page').attr('href');
//       if (url && $(window).scrollTop() > $(document).height() - $(window).height() - 50) {
//         $('.pagination').text("Please Wait...");
//         return $.getScript(url);
//       }
//     });
//     return $(window).scroll();
//   }
// });
// $(document).ready(function(){
 //    $("#hideDemo").click(function(){
 //        $(this).hide();
 //    });
 //    $("#mouseleaveDemo").mouseleave(function(){
 //        alert("You now leave Company Location!");
 //    });
 //    $("#hoverDemo").hover(function(){
 //        alert("Image of Company!");
 //    },
 //    function(){
 //        alert("You now leave Company");
 //    }); 
 //    $("input").focus(function(){
 //        $(this).css("background-color", "#cccccc");
 //    });
 //    $("input").blur(function(){
 //        $(this).css("background-color", "#ffffff");
 //    });
 //    $("input").keydown(function(){
 //        alert("keydown");
 //    });
 //    $("input").keyup(function(){
 //        alert("keyup");
 //    });
 //    $("input").keypress(function(){
 //        alert("keypress");
 //    });
 //    $("#removeDemo").click(function(){
 //        $("#div1").remove();
 //    });
 //     $(".blindDemo").bind("click", function(){
 //        alert("Company blind function.");
 //    });
	// $("#isSelect").click(function () {	
	// alert($('#country').val());		
 //    });
 //    $("#selectChina").click(function () {	
	// $("#country").val("China");
 //    });
 //    $("#selectUS").click(function () {	
	// $("#country").val("United State");		
 //    });
 //    $("#selectMalaysia").click(function () {
	// $("#country").val("Malaysia");
 //    });
 //    $("#selectIndia").click(function () {
	// $("#country").val("India");
 //    });
 //    $("button").click(function(){
 //        $("#hideShow").toggle();
 //    });
 //    $("#disableUS").click(function () {	
	// $("#country option[value='United State']").attr("disabled", true);	
 //    });
 //    $("#enableUS").click(function () {	
	// $("#country option[value='United State']").attr("disabled", false);	
 //     });


$(document).ready(function(){

	$(".submit").click(function() {
		debugg r
    form_data = $("#new_company").serialize();		
		$.ajax({  
		  type: "POST",
		  url: "/companies",
		  data: form_data    
		});		
	});

});