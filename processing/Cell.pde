

public class Cell {
  public int x;
  public int y;
  private float l;
  
  boolean orientation;
  
  public Cell(int x, int y, boolean orientation) {
    this.x = x;
    this.y = y;
    this.l = Grid.l;
    this.orientation = orientation;
  }
  
  // public void show(){
  //   stroke(255);
  //   strokeWeight(1.5);
  //   noFill();
  //   
  //   if (!orientation) line(x, y, x+l, y+l);
  //   else line(x, y+l, x+l, y);
  // }

  public void show(){
    noStroke();
    fill(255);
    if (this.orientation) {
      //draw at top
      rect(this.x, this.y, this.l, this.l/2);
    }else {
      rect(this.x, this.y, this.l/2, this.l);
    }
  }

  public void changeOrientation() {
    orientation = !orientation;
  }
  
  public void setOrientation(boolean orientation) {
    this.orientation = orientation;
  }
}
