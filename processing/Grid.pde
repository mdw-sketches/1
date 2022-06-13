import java.util.Random;

float scale = 0.002;

public class Grid {
  Cell[][] cells;
  private int xAmount;
  private int yAmount;
  private int xStart;
  private int yStart;
  public static final int l = 10;
  private Random rng;
  
  private float z = 0;
  
  
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
  
  public void animate2(){
    for (Cell[] row : cells) {
      for(Cell cell: row) {
        float n = noise(cell.x*scale, cell.y*scale, z);
        if (n>0.5) cell.setOrientation(true);
        else cell.setOrientation(false);
        z += 0.00002;
      }
    }
  }
  
}