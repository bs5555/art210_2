Mover mover;
 
void setup() {
  size(640,360);
  mover = new Mover();
}
 
void draw() {
  fill(color(0,0,0,10));
  noStroke();
  rect(0,0,width,height);
  mover.update();
  mover.checkEdges();
  mover.display();
}
 
