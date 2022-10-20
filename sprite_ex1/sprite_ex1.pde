Sprite s;

void setup()
{
  size(800,600);
  s = new Sprite();
  s.velocity.x = 1.4;
  String[] files = {"zombie1.svg","zombie2.svg"};
  s.addAnimation(files,10);
}

void draw()
{
  background(255);
  translate(width/2,height/2);
  s.update();
  s.check();
  s.display();
}
