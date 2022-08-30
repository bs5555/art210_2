/*
Random circle drawer
I made him
*/
float _angle = 0;

void setup()
{
  //setting window size
  size(800,600);
}

void draw()
{
  clearScene();
  _angle = setAngle(_angle);
  drawCircle(_angle);
}



float setAngle(float angle)
{
  //check angle value
  angle = angle + 1;
  if(angle > 360)
  {
    angle = 0;
  }
  println(angle);
  return(angle);
}

void clearScene()
{
  //partial screen clear
  noStroke();
  fill(color(0,0,0,10));
  rect(0,0,800,600);
}

void drawCircle(float angle)
{
  //draw random circle
  colorMode(HSB,360,100,100);
  float hue = random(angle,angle+60);
  float sat = random(100,100);
  float bri = random(100,100);
  color circle_color = color(hue,sat,bri);
  fill(circle_color);
  circle(random(800),random(600), random(50,120));
}
