class Sq
{
  int xpos = 0;
  int ypos = 0;
  float d = 10;
  boolean isBlack = true;
  boolean nextBlack = true;
  
  Sq()
  {
    
  }
  
  void show()
  {
    fill(color(255,255,255));
    if(this.isBlack) fill(color(0,0,0));
    square(this.xpos*this.d,this.ypos*this.d,this.d);
  }
  
  void clicked()
  {
    if(
        mouseX > this.xpos*this.d
        &&
        mouseX < (this.xpos*this.d)+d
        &&
        mouseY > this.ypos*this.d
        &&
        mouseY < (this.ypos*this.d)+d
    )
    {
      this.isBlack = !this.isBlack;  
    }
  }
  
  void liveOrDie()
  {
     int nLive = 0;
     
     int x = this.xpos;
     int xm = this.xpos-1; if(xm < 0) xm = maxx-1;
     int xp = this.xpos+1; if(xp > maxx-1) xp = 0;
     
     int y = this.ypos;
     int ym = this.ypos-1; if(ym < 0) ym = maxy-1;
     int yp = this.ypos+1; if(yp > maxy-1) yp = 0;
     
     
     if(!mSquare[xm][y ].isBlack) nLive = nLive + 1;
     if(!mSquare[xp][y ].isBlack) nLive = nLive + 1;
     if(!mSquare[x ][ym].isBlack) nLive = nLive + 1;
     if(!mSquare[x ][yp].isBlack) nLive = nLive + 1;
     if(!mSquare[xm][ym].isBlack) nLive = nLive + 1;
     if(!mSquare[xp][yp].isBlack) nLive = nLive + 1;
     if(!mSquare[xp][ym].isBlack) nLive = nLive + 1;
     if(!mSquare[xm][yp].isBlack) nLive = nLive + 1;
     
     if(!this.isBlack) //rules for the living
     {
       if(nLive == 2 || nLive == 3)
       {
         this.nextBlack = false;
       }
       else
       {
         this.nextBlack = true;
       }
     }
     else //rules for the dead
     {
       if(nLive == 3 || nLive == 4)
       {
         this.nextBlack = false;
       }
       else
       {
         this.nextBlack = true;
       }
     }
     
     //fill(255,100,100);
     //textSize(20);
     //text(nLive,(this.xpos*this.d+d/3),(this.ypos*this.d)+d/2);
     
  }
  
}//end of class Sq
