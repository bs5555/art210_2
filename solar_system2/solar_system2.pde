float _angle = 0;

float size_of_planet_1 = random(10,100);
float speed_of_planet_1 = random(-2,2);
float distance_of_planet_1 = random(100,400);
color color_of_planet_1 = color(random(255),random(255),random(255));

float size_of_planet_2 = random(10,100);
float speed_of_planet_2 = random(-2,2);
float distance_of_planet_2 = random(100,400);
color color_of_planet_2 = color(random(255),random(255),random(255));

void setup()
{
  size(800,600);
}

void draw()
{
  clearScreen();
  translate(width/2,height/2);
  scale(0.5); 
  aCircle(0,0,200,color(255,255,255));
  
  aPlanet(size_of_planet_1,speed_of_planet_1,distance_of_planet_1,color_of_planet_1);
  aPlanet(size_of_planet_2,speed_of_planet_2,distance_of_planet_2,color_of_planet_2);

  
  
  _angle = _angle + 1;
}

void aPlanet(float size,float speed, float distance,color col)
{
  pushMatrix();
    rotate(radians(_angle/speed));
    translate(distance,0);
    aCircle(0,0,size,col);
  popMatrix();
}

void aCircle(float x, float y, float d,color col)
{
  noStroke();
  fill(col);
  circle(x,y,d);
}

void clearScreen()
{
  noStroke();
  fill(color(0,0,0,6));
  rect(0,0,width,height);
}
