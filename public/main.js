$( document ).ready(function() {
    console.log( "ready!" );

// HEADER





// HOME (Preston)







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
      $("#formations").show(1000);
      $("#formations2").hide(0);

});

$( "#guest_continue" ).click(function() {
      $("#formation1").hide(0);
      $("#formations2").show(0);
});


// BECOME A RUNNER (Jake)








// CONTACT (Jake)





// FOOTER
});