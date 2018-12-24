let display = document.querySelector(".display");
let displayItem = document.querySelectorAll(".display-item");

if (display) {
  requestAnimationFrame(scroller);
  insertClone();
  setInterval(insertClone, 15000);

  function scroller() {
    display.scrollBy(1.6, 0);
    requestAnimationFrame(scroller);
  }

  function insertClone() {
    for (let i = 0; i < displayItem.length; i++) {
      display.appendChild(displayItem[i].cloneNode(true));
    }
  }
}
