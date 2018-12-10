let dinnerMenuTitle = document.querySelectorAll(".js-dinner-menu__title-hook");

function lunchMenu() {
  for (let i = 0; i < dinnerMenuTitle.length; i++) {
    dinnerMenuTitle[i].addEventListener("click", function() {
      this.parentNode.childNodes[3].classList.toggle("js-dinner-expand-menu");
      this.childNodes[1].classList.toggle("js-chevron-rotate");
      console.log(this.childNodes[1]);
    });
  }
}

export default lunchMenu;
