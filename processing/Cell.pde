

public class Cell {
  int x;
  int y;
  int l;
  
  boolean orientation;
  
  public Cell(int x, int y, boolean orientation) {
    this.x = x;
    this.y = y;
    this.l = Grid.l;
    this.orientation = orientation;
  }
  
  public void show(){
    stroke(255);
    strokeWeight(2);
    noFill();
    
    if (!orientation) line(x, y, x+l, y+l);
    else line(x, y+l, x+l, y);
  }
  
  public void changeOrientation() {
    orientation = !orientation;
  }
}