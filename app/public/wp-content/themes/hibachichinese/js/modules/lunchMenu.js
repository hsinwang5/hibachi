let headerArrays = document.querySelectorAll(".js-menu-item__heading");
let plusHook = document.querySelectorAll(".js-plus-hook");
let minusHook = document.querySelectorAll(".js-minus-hook");
let menuItem = document.querySelectorAll(".menu-item");

console.log(menuItem);

function lunchMenu() {
  for (let i = 0; i < headerArrays.length; i++) {
    headerArrays[i].addEventListener("click", function() {
      this.parentNode.childNodes[3].classList.toggle("js-expand-menu");
      plusHook[i].classList.toggle("inactive");
      minusHook[i].classList.toggle("inactive");
      this.parentNode.childNodes[5].classList.toggle("js-menu-item__hover");
      this.parentNode.classList.toggle("js-menu-item__change");
      console.log(this.parentNode.childNodes[5]);
    });
    // menuItem[i].addEventListener("mouseover", function() {
    //   menuItem[i].childNodes[5].classList.add("js-menu-item__hover");
    // });
    // menuItem[i].addEventListener("mouseout", function() {
    //   menuItem[i].childNodes[5].classList.remove("js-menu-item__hover");
    // });
  }
}

export default lunchMenu;
