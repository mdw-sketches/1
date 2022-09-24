Grid grid;
final int ANIMATION_AMOUNT = 20;

void setup(){
  size(800, 800);
  background(0);
  
  grid = new Grid();
}

void draw(){
  background(0);
  grid.show();
  if(frameCount > 50) grid.animate(ANIMATION_AMOUNT);
  //if(frameCount > 50) grid.animate2();
}
