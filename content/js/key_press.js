  
  //   if key backspace is pressed go to index.html
  
  $(document).keydown(function(keyPressed) {
   if (keyPressed.keyCode == 8) {
//      $("body").css("background-color","tomato");
     window.location.href = "index.html";
   }
  });

//   if key up is pressed which is code 38 then change body background-color to tomato or moves you to top of the page
  
  $(document).keydown(function(keyPressed) {
   if (keyPressed.keyCode == 38) {
//      $("body").css("background-color","tomato");
     window.location.href = "#top";
   }
  });
