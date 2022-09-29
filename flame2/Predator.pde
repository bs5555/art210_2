class Predator
{
  PShape flame;
  PVector prev_location = new PVector(0,0);
  PVector location = new PVector(0,0);
  
  
  Predator()
  {
    //this.flame = loadShape("flame.svg");
  }
  
  void update()
  {
    this.prev_location = this.location;
    this.location.x = mouseX;
    this.location.y = mouseY;  
  }
  
  void display()
  {
    noStroke();
    fill(255,255,255);
    PVector north = new PVector(100,0);
    PVector dir = this.location.sub(this.prev_location);
    float angle = PVector.angleBetween(dir,north);
    println(dir.x+";"+dir.y);
    pushMatrix();
      translate(location.x,location.y);
      rotate(angle);
      translate(-15,-15);
      rect(0,0,30,60);
      //shape(this.flame,0,0);
    popMatrix();
  }
  
  
}
