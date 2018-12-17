let radialMenu = document.querySelector(".radial-menu");
let menuButton = document.querySelector(".mobile-menu");
let link1 = document.querySelector(".radial-menu__link--1");
let link2 = document.querySelector(".radial-menu__link--2");
let roundLogo = document.querySelector(".round-logo");
let headerBar = document.querySelector(".header-container");
let lastScrollPos = 0;
let throttle = require("lodash.throttle");

menuButton.addEventListener("click", function() {
  radialMenu.classList.toggle("js-header-slide-down");
  link1.classList.toggle("js-links-slide");
  link2.classList.toggle("js-links-slide");

  // menuButton.classList.add("inactive");
});

let scrollAction = function() {
  if (window.pageYOffset > 25) {
    headerBar.classList.add("js-headerbar-shrink");
    roundLogo.classList.add("js-logo-animate");
  } else {
    headerBar.classList.remove("js-headerbar-shrink");
    roundLogo.classList.remove("js-logo-animate");
  }
  lastScrollPos = window.pageYOffset;
};

window.addEventListener("scroll", throttle(scrollAction, 100));

// window.addEventListener("scroll", function() {
//   console.log("window.pageYOffset");
// });
