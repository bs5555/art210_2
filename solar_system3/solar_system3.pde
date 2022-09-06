float _angle = 0;

void setup()
{
  size(800,600);
}

void draw()
{
  clearScene();
  noStroke();
  translate(width/2,height/2);
  fill(color(255,255,255));
  circle(0,0,100);
  
  
  pushMatrix();
    rotate(radians(_angle));
    translate(200,0);
    fill(color(255,200,50));
    circle(0,0,50);
    pushMatrix();
      rotate(radians(_angle)*2);
      translate(50,0);
      fill(color(255,100,50));
      circle(0,0,10);
    popMatrix();
    pushMatrix();
      rotate(radians(_angle)*3);
      translate(70,0);
      fill(color(100,100,255));
      circle(0,0,20);
    popMatrix();
  popMatrix();
 
  pushMatrix();
    rotate(radians(_angle)/2);
    translate(100,0);
    fill(color(255,200,0));
    circle(0,0,20);
  popMatrix();
  
  /* pushMatrix();
    rotate(radians(_angle)/-2);
    translate(300,0);
    circle(0,0,40);
  popMatrix();*/
  
  _angle = _angle + 1; 
}

void clearScene()
{
  //partial screen clear
  noStroke();
  fill(color(0,0,0,10));
  rect(0,0,800,600);
}
