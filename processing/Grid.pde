import java.util.Random;

public class Grid {
  Cell[][] cells;
  private int xAmount;
  private int yAmount;
  private int xStart;
  private int yStart;
  public static final int l = 10;
  private Random rng;
  
  
  public Grid() {
    xAmount = width/l - 2;
    yAmount = height/l - 2;
    xStart = l + (width%l)/2;
    yStart = l + (height%l)/2;
    
    rng = new Random();
    
    initCells();
  }
  
  private void initCells(){
    cells = new Cell[xAmount][yAmount];
    
    for (int i = 0; i < xAmount; i++){
      for(int j = 0; j < yAmount; j++){
        cells[i][j] = new Cell(xStart + i*l, yStart + j*l, true);
      }
    }
  }
  
  public void show() {
    for(Cell[] row: cells) {
      for(Cell cell: row) {
        cell.show();
      }
    }
  }
  
  public void animate(int amount) {
    for (int k = 0; k < amount; k++) {
      int ri = rng.nextInt(xAmount);
      int rj = rng.nextInt(yAmount);
      
      cells[ri][rj].changeOrientation();
    }
  }
  
}