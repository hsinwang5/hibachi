let display = document.querySelector(".display");
let displayItem = document.querySelectorAll(".display-item");

let scrollSpeed = window.innerWidth > 1920 ? 2 : 1;

if (display) {
  requestAnimationFrame(scroller);
  insertClone();
  setInterval(insertClone, 15000);

  function scroller() {
    display.scrollBy(scrollSpeed, 0);
    requestAnimationFrame(scroller);
  }

  function insertClone() {
    for (let i = 0; i < displayItem.length; i++) {
      display.appendChild(displayItem[i].cloneNode(true));
    }
  }
}
