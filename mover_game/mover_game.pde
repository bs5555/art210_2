int nMover = 500;
Mover[] m = new Mover[nMover];
int counter = nMover;
PGraphics screen;

void setup()
{
  size(1400,1000,P3D);
  //fullScreen();
  screen = createGraphics(width,height,P3D);
  screen.beginDraw();
  screen.background(0);
  screen.endDraw();
  for(int i = 0; i < m.length; i = i + 1)
  {
    m[i] = new Mover();
  }
}

void draw()
{
  screen.beginDraw();
  screen.colorMode(HSB,width+height,100,100);
  screen.fill(color(0,0,0,10));
  screen.noStroke();
  screen.rect(0,0,width,height);
  for(int i = 0; i < m.length; i = i + 1)
  {
    m[i].update();
    m[i].check();
    m[i].show();
  }
  screen.endDraw();
  image(screen,0,0);
  noStroke();
  fill(color(255,0,100));
  circle(mouseX,mouseY,30);
  hud();
}


void hud()
{
  translate(width/2,10);
  fill(255);
  textAlign(CENTER);
  text(counter,0,30);
  translate(-nMover/2,0);
  noStroke();
  fill(color(255,255,255));
  rect(0,0,nMover-counter,4,4);
  fill(color(255,255,255,80));
  rect(-1,-1,nMover+2,10,5);
}

void mouseClicked()
{
  for(int i = 0; i < m.length; i = i + 1)
  {
    m[i].lifeCheck(mouseX,mouseY);
  }
}
