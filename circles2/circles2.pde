int screenX = 1000;
int screenY = 1000;

void setup()
{
  //Set the window size
  size(1000,1000);
}

void draw()
{
  color background = color(255,255,255,5);
  fill(background);
  
  rect(0,0,screenX,screenY);
  circle(mouseX,mouseY,220);
  //circle(mouseX/10,mouseY/10,20);
  //circle(mouseY,mouseX,100);
  circle(mouseX,mouseY,(mouseX+mouseY)/2);
}
