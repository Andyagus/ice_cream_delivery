$( document ).ready(function() {
    console.log( "ready!" );

// HEADER





// HOME (Preston)

$(document).ready(function(){
  $('#home_iphone').fadeOut(0).fadeIn(2000);
  $('#home_macbook').fadeOut(0).fadeIn(2000);
  // $('#home_intro_words').fadeOut(0).fadeIn(2000);
  // $('#delay1').fadeOut(0).delay(1000).fadeIn(2000);
  // $('#delay2').fadeOut(0).delay(2000).fadeIn(2000);
});





// ORDER (Andy)


$(".mover").mousemove(function(event){
      $(".wide_icecream").css('left','-520px');
      $(".flavor p").text("French Vanilla")      
      $("body").css("background-color","#fff0ce");

});

$(".mover2").mousemove(function(event){
      $(".wide_icecream").css('left','-1028px');
      $(".flavor p").text("Triple Chocolate")
      $("body").css("background-color","#dbc3bf");
      fae1e8

});

$(".mover3").mousemove(function(event){
      $(".wide_icecream").css('left','-1545px');
      $(".flavor p").text("Strawberry Slam")
      $("body").css("background-color","#fae1e8");

});

$(".mover4").mousemove(function(event){
      $(".wide_icecream").css('left','-2068px');
      $(".flavor p").text("Pistachio Mustachio")
      $("body").css("background-color","#d9e0c6");

});


$(".mover5").mousemove(function(event){
      $(".wide_icecream").css('left','-2568px');
      $(".flavor p").text("Simply Vanilla")
      $("body").css("background-color","white");


});

$(".mover6").mousemove(function(event){
      $(".wide_icecream").css('left','-3078px');
      $(".flavor p").text("Princess Peach")
      $("body").css("background-color","#fddfc9");

});

$("#formations").hide()

$( ".order_button" ).click(function() {
      $(".order_content").hide(0);
      $(".order_selection").hide(0); 
      $(".order_header p").hide(0); 
      $("#formations").show(0);
      $("#formations2").hide(0);
});

$( "#guest_continue" ).click(function() {
      $("#formation1").hide(0);
      $("#formations2").show(0);

});



// BECOME A RUNNER (Jake)
// var processSubmit = function(){
//   ...your code...
//   return true;
// }
// $(document).click(function() {
//   if("#first_name" === "") {    
//     alert('Please enter a first name');     
//     // return false;  
//   } else { 
//     alert("Thank you for your application");   
//     // return false;
//   } 



//   // alert("test");
// //  function validateForm() {
// //     var name = document.forms["application"]["first_name"].value;
// //     if (name == null || name == "") {
// //         alert("first must be filled out");
// //         return false;
// //     }
// // }
// });






// $("runner_button").click(function(){   
//   if($("#first_name").val() == ""){      
//     alert('Please enter a first name');     
//     return false;   
//   } else if($("#last_name").val() == ""){      
//     alert('Please enter a last name');     
//     return false;   
//   } else if($("#email").val() == ""){      
//     alert('Please enter an email address');     
//     return false;   
//   } else if($("#phone").val() == ""){      
//     alert('Please enter a phone number');     
//     return false;   
//   } else if($("#city").val() == ""){      
//     alert('Please enter the city you are pplying for');     
//     return false;
//   } else { 
//     alert("Thank you for your applcication");   
//     return false;
//   } 
// });






// CONTACT (Jake)





// FOOTER
});