class Cell {
  x;
  y;
  #l;
  orientation;

  constructor(x, y, orientation) {
    this.x = x;
    this.y = y;
    this.orientation = orientation;
  }

  show() {
    stroke(255);
    strokeWeight(1.5);
    noFill();

    if (!this.orientation)
      line(this.x, this.y, this.x + Grid.l, this.y + Grid.l);
    else line(this.x, this.y + Grid.l, this.x + Grid.l, this.y);
  }

  changeOrientation() {
    this.orientation = !this.orientation;
  }

  set orientation(orientation) {
    this.orientation = orientation;
  }
}
