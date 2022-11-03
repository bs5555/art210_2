import processing.sound.*;
SoundFile beep;

int gameState = 0; //0 startscreen, 1 gameplay, 2 beeing dead

Zombie s;
Ground[] g;
int nGround = 0;
PImage bg;
Boulder[] b;
int nBoulder = 8;

void setup()
{
  size(1200,800);
  beep = new SoundFile(this,"beep.wav");
  bg = loadImage("bg.jpg");
  reset();
}

void draw()
{
  if(gameState == 0) startScreen();
  if(gameState == 1) gamePlay();
  if(gameState == 2) deadScreen(); 
}

void keyPressed()
{
  if(gameState == 0) gameState = 1;
  if(gameState == 1) s.jump();
  if(gameState == 2) 
  {
    reset();
    gameState = 1;
  }
}

void reset()
{
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
  
  nGround = ceil(width/1000.0)+1; //number of ground element is acconted form screen size and ground element width
  g = new Ground[nGround];

  String[] files4 = {"ground1.svg"};
  String[] files5 = {"ground2.svg"};
  String[] files6 = {"ground3a.svg","ground3b.svg"};
  String[] files7 = {"ground4.svg"};
  String[] files8 = {"ground5.svg"};
  String[] files9 = {"ground6.svg"};
  for(int i = 0; i < nGround; i = i + 1)
  {
    g[i] = new Ground();
    g[i].addAnimation(files4,10);
    g[i].addAnimation(files5,10);
    g[i].addAnimation(files6,10);
    g[i].addAnimation(files7,10);
    g[i].addAnimation(files8,10);
    g[i].addAnimation(files9,10);
    g[i].location.x = -(width/2.0)+(g[i].boxx * i);
  }
  
  String[] files10 = {"boulder1.svg"};
  String[] files11 = {"boulder2.svg"};
  String[] files12 = {"boulder3.svg"};
  String[] files13 = {"boulder4.svg"};
  String[] files14 = {"boulder5.svg"};

  b = new Boulder[nBoulder];
  for(int i = 0; i < nBoulder; i = i + 1)
  {
    b[i] = new Boulder();
    b[i].addAnimation(files10,10);
    b[i].addAnimation(files11,10);
    b[i].addAnimation(files12,10);
    b[i].addAnimation(files13,10);
    b[i].addAnimation(files14,10);
    b[i].location.x = (width/2.0)+random(10,4000);
    b[i].location.y = (height/2.0)-200;
  }
}

void startScreen()
{
  noStroke();
  fill(355,0,200);
  rect(0,0,width,height);
  fill(255);
  textAlign(CENTER,CENTER);
  text("Press ANY key to start and jump",width/2,height/2);
}

void deadScreen()
{
  noStroke();
  fill(0);
  rect(0,0,width,height);
  fill(255);
  textAlign(CENTER,CENTER);
  text("RIP. Press ANY key to resurrection",width/2,height/2);
}

void gamePlay()
{
image(bg,0,0);
  translate(width/2,height/2);
  for(int i = 0; i < nGround; i = i + 1)
  {
    g[i].update();
    g[i].check();
    g[i].display();
  }
  
  for(int i = 0; i < nBoulder; i = i + 1)
  {
    b[i].update();
    b[i].check();
    b[i].display();
  }
  
  s.update();
  s.check();
  s.display();
}
