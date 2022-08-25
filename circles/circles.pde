float angle = 30;

void setup()
{
  size(800,600);
}

void draw()
{
  noStroke();
  fill(color(0,0,0,10));
  rect(0,0,800,600);
  
  colorMode(HSB,360,100,100);
  angle = angle + 0.1;
  if(angle > 360) angle = 0;
  println(angle);
  float hue = random(angle,angle+60);
  float sat = random(100,100);
  float bri = random(100,100);
  color circle_color = color(hue,sat,bri);
  fill(circle_color);
  
  //fill(color(random(255),random(255),random(255)));
  circle(random(800),random(600), 220);
}
