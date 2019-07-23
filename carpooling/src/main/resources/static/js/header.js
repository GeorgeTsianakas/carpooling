jQuery(App);


function App($) {
// When the user scrolls the page, execute myFunction 
window.onscroll = function() {myFunction()};

// Get the header
var header = document.getElementById("myHeader");

// Get the offset position of the navbar
var sticky = header.offsetTop;

// Add the sticky class to the header when you reach its scroll position. Remove "sticky" when you leave the scroll position
function myFunction() {
  if (window.pageYOffset > sticky) {
    header.classList.add("sticky");
  } else {
    header.classList.remove("sticky");
  }
};
//var button = $("#nav_offeraride"); 
////button.
//$(document).ready(function () {
//  $(".prvcplc").click(function () {
//    $("#prvcplcModal").modal();
//  });
//  
////on click on the navbar scroll down)
// $("#nav_offeraride").click(function(){
//    window.scrollTo(0, 750);
//  });
//
//  $("#nav_findaride").click(function(){
//
//    window.scrollTo(0, 150);
//  });
//
//});
}
