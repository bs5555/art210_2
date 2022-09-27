Mover m;

void setup()
{
  size(800,600);
  m = new Mover();
}

void draw()
{
  background(255);
  m.update();
  m.check();
  m.display();
}
