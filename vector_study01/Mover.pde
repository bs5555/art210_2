class Mover 
{
  PVector location;
  PVector velocity;
  PVector acceleration;
 
  Mover() 
  {
    location = new PVector(random(width),random(height));
    velocity = new PVector(random(-2,2),random(-2,2));
    acceleration = new PVector(0,0.01);
  }
 
  void update() 
  {
    acceleration= PVector.random2D();
    acceleration = acceleration.mult(0.1);  
    velocity.add(acceleration);
    location.add(velocity);
  }
 
  void display() 
  {
    noStroke();
    fill(255);
    ellipse(location.x,location.y,16,16);
  }
 
  void checkEdges() 
  {
    if(location.x > width) 
    {
      location.x = 0;
    } 
    else if(location.x < 0) 
    {
      location.x = width;
    }
 
    if(location.y > height) 
    {
      location.y = 0;
    } 
    else if(location.y < 0) 
    {
      location.y = height;
    }
  }
}
