let headerArrays = document.querySelectorAll(".js-menu-item__heading");
let plusHook = document.querySelectorAll(".js-plus-hook");
let minusHook = document.querySelectorAll(".js-minus-hook");
let menuItem = document.querySelectorAll(".menu-item");
let rightMenu = document.querySelectorAll(".right-menu");
let leftMenu = document.querySelectorAll(".left-menu");
let footer = document.querySelectorAll(".footer");
let footerScroll;

footerScroll = footer[0].offsetTop - 100;
setTimeout(function() {
  if (rightMenu.length) {
    rightMenu[0].style = "height: " + footerScroll + "px;";
    leftMenu[0].style = "height: " + footerScroll + "px;";
  }
}, 1000);

function lunchMenu() {
  for (let i = 0; i < headerArrays.length; i++) {
    headerArrays[i].addEventListener("click", function() {
      toggleMenuDetails(this, i);
      setImageHeight();
    });
  }
  window.addEventListener("resize", function() {
    setImageHeight();
  });
}

//sub-functions ----------------------------------------------------------------------

function setImageHeight() {
  if (rightMenu.length) {
    rightMenu[0].style = "height: " + footer[0].offsetTop + "px;";
    leftMenu[0].style = "height: " + footer[0].offsetTop + "px;";
  }
}

function toggleMenuDetails(a, index) {
  a.parentNode.childNodes[3].classList.toggle("js-expand-menu");
  plusHook[index].classList.toggle("inactive");
  minusHook[index].classList.toggle("inactive");
  a.parentNode.childNodes[5].classList.toggle("js-menu-item__hover");
  a.parentNode.classList.toggle("js-menu-item__change");
}

export default lunchMenu;
