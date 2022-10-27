Zombie s;
Ground g1,g2,g3;
PImage bg;

void setup()
{
  size(1200,800);
  bg = loadImage("bg.jpg");
  s = new Zombie();
  s.location.x=(-width/2)+100;
  s.location.y=(height/2)-200;
  String[] files = {"zombie1.svg","zombie2.svg"};
  s.addAnimation(files,10);
  String[] files1 = {"zombie1a.svg","zombie2a.svg"};
  s.addAnimation(files1,10);
  String[] files2 = {"zombieup.svg"};
  s.addAnimation(files2,10);
  String[] files3 = {"zombiefall1.svg","zombiefall2.svg"};
  s.addAnimation(files3,10);
  s.currentAni=0;
  
  g1 = new Ground();
  String[] files4 = {"ground1.svg"};
  String[] files5 = {"ground2.svg"};
  String[] files6 = {"ground3a.svg","ground3b.svg"};
  String[] files7 = {"ground4.svg"};
  String[] files8 = {"ground5.svg"};
  String[] files9 = {"ground6.svg"};
  g1.addAnimation(files4,10);
  g1.addAnimation(files5,10);
  g1.addAnimation(files6,10);
  g1.addAnimation(files7,10);
  g1.addAnimation(files8,10);
  g1.addAnimation(files9,10);
  g1.location.x = -(width/2.0);
  
  g2 = new Ground();
  g2.addAnimation(files4,10);
  g2.addAnimation(files5,10);
  g2.addAnimation(files7,10);
  g2.addAnimation(files8,10);
  g2.addAnimation(files9,10);
  g2.location.x = -(width/2.0)+g2.boxx;
  
  g3 = new Ground();
  g3.addAnimation(files4,10);
  g3.addAnimation(files5,10);
  g3.addAnimation(files7,10);
  g3.addAnimation(files8,10);
  g3.addAnimation(files9,10);
  g3.location.x = -(width/2.0)+(g3.boxx*2);
  
}

void draw()
{
  image(bg,0,0);
  translate(width/2,height/2);
  g1.update();
  g1.check();
  g1.display();
  
  g2.update();
  g2.check();
  g2.display();
  
  g3.update();
  g3.check();
  g3.display();
  
  s.update();
  s.check();
  s.display();
}

void keyPressed()
{
  s.jump();
}
