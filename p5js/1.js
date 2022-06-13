let grid;
const ANIMATION_AMOUNT = 50;

function setup() {
  createCanvas(500, 500);
  background(0);
  grid = new Grid();
}

function draw() {
  background(0);
  grid.show();
  if (frameCount > 50) grid.animate(ANIMATION_AMOUNT);
  //if (frameCount > 50) grid.animate2();
}
