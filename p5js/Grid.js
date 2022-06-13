const scl = 0.002;

class Grid {
  #cells;
  xAmount;
  yAmount;
  xStart;
  yStart;
  z = 0;
  static l = 10;

  constructor() {
    this.xAmount = width / Grid.l - 2;
    this.yAmount = height / Grid.l - 2;
    this.xStart = Grid.l + (width % Grid.l) / 2;
    this.yStart = Grid.l + (height % Grid.l) / 2;

    this.#initCells();
  }

  #initCells() {
    this.#cells = new Array();
    for (let i = 0; i < this.xAmount; i++) {
      this.#cells[i] = new Array();
      for (let j = 0; j < this.yAmount; j++) {
        this.#cells[i][j] = new Cell(
          this.xStart + i * Grid.l,
          this.yStart + j * Grid.l,
          true
        );
      }
    }
  }

  show() {
    for (const row of this.#cells) {
      for (const cell of row) {
        cell.show();
      }
    }
  }

  animate(amount) {
    for (let k = 0; k < amount; k++) {
      let ri = Math.floor(Math.random() * this.xAmount);
      let rj = Math.floor(Math.random() * this.yAmount);

      this.#cells[ri][rj].changeOrientation();
    }
  }

  animate2() {
    for (const row of this.#cells) {
      for (const cell of row) {
        let n = noise(cell.x * scl, cell.y * scl, this.z);
        if (n > 0.5) cell.orientation = true;
        else cell.orientation = false;
        this.z += 0.00002;
      }
    }
  }
}
