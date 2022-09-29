int nMover = 1000;
Mover[] m = new Mover[nMover];
Predator p = new Predator();

void setup()
{
  size(800,600);
  //fullScreen();
  for(int i = 0; i < m.length; i = i + 1)
  {
    m[i] = new Mover();
  }  
}

void draw()
{
  noStroke();
  fill(0,0,0,10);
  rect(0,0,width,height);
  for(int i = 0; i < m.length; i = i + 1)
  {
    m[i].update();
    m[i].check();
    m[i].display();
  } 
  p.update();
  p.display();
}

void mousePressed()
{
  for(int i = 0; i < m.length; i = i + 1)
  {
    m[i].bite(mouseX,mouseY);
  }
}
