class Zombie extends Sprite
{
  boolean isJump = false;
  int nJump = 0;
  boolean isDead = false;
  
  Zombie()
  {
    super();
  }
  
  void jump()
  {
    if(this.nJump < 3)
    {
      this.velocity.y=-8;
      this.acceleration.y = 0.2;
      this.isJump=true;
      this.nJump = this.nJump + 1;
    }  
  }
  
  void check()
  {
    //float actualY = screenY(this.location.x,this.location.y);
    if(location.y > (height/2)-200) 
    {
      this.acceleration.y = 0;
      this.velocity.y=0;
      this.location.y=height/2-200;
      this.isJump=false;
      this.nJump = 0;
    }
    if(!this.isDead)
    {
      if(this.isJump)
      {
        if(this.velocity.y < 0)
        {
          this.currentAni = 2;  //up
        }
        else
        {
          this.currentAni = 3;  //down
        }
      }
      else
      {
        this.currentAni = 0;  //grounded
      }
    }
    else
    {
      this.currentAni = 4;  //dead
    }
  }
  
  void display()
  {
    if(!this.isDead)
    {
      float shadow = map(this.location.y,-height/2.0,height/2.0,0,1.0);
      fill(color(0,0,0,shadow*100));
      shadow = (1.0-shadow)*400.0;
      ellipse(this.location.x,270,shadow,shadow/5.0);
    }  
    super.display();  
  }
  
}
