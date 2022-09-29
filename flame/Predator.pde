class Predator
{
  PShape flame;
  PVector location = new PVector(0,0);
  PVector velocity = new PVector(0,0);
  PVector acceleration = new PVector(0,0);
  
  Predator()
  {
    this.flame = loadShape("flame.svg");
  }
  
  void update()
  {
    this.acceleration = new PVector(mouseX, mouseY);
    this.velocity = this.velocity.add(this.acceleration);
    this.location = this.location.add(this.velocity);
  }
  
  void display()
  {
    noStroke();
    fill(255,255,255,10);
    pushMatrix();
      translate(location.x,location.y);
      circle(0,0,60);
      shape(this.flame,0,0);
    popMatrix();
  }
  
  
}
