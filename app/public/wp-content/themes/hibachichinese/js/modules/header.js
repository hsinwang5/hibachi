let radialMenu = document.querySelector(".radial-menu");
let menuButton = document.querySelector(".mobile-menu");
let closeButton = document.querySelector(".close-menu");
let link1 = document.querySelector(".radial-menu__link--1");
let link2 = document.querySelector(".radial-menu__link--2");

menuButton.addEventListener("click", function() {
  radialMenu.classList.toggle("js-header-slide-down");
  link1.classList.toggle("js-links-slide");
  link2.classList.toggle("js-links-slide");

  // menuButton.classList.add("inactive");
});

// closeButton.addEventListener("click", function() {
//   header.classList.remove("js-header-slide-down");
//   // menuButton.classList.remove("inactive");
// });
