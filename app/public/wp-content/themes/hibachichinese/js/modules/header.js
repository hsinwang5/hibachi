let popDownMenu = document.querySelector(".pop-down-menu");
let menuButton = document.querySelector(".mobile-menu");
let closeButton = document.querySelector(".close-menu");

menuButton.addEventListener("click", function() {
  popDownMenu.classList.toggle("js-pop-down-menu--slide-down");
  // menuButton.classList.add("inactive");
});

// closeButton.addEventListener("click", function() {
//   header.classList.remove("js-header-slide-down");
//   // menuButton.classList.remove("inactive");
// });
