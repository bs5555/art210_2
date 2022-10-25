class Zombie extends Sprite
{
  boolean isJump = false;
  
  Zombie()
  {
    super();
  }
  
  void jump()
  {
    if(!this.isJump)
    {
      this.velocity.y=-8;
      this.acceleration.y = 0.1;
      this.isJump=true;
    }  
  }
  
  void check()
  {
    //float actualY = screenY(this.location.x,this.location.y);
    println(this.location.y);
    if(location.y > (height/2)-200) 
    {
      this.acceleration.y = 0;
      this.velocity.y=0;
      this.location.y=height/2-200;
      println("landed");
      this.isJump=false;
    }
    if(this.isJump)
    {
      if(this.velocity.y < 0)
      {
        this.currentAni = 2;
      }
      else
      {
        this.currentAni = 3;
      }
    }
    else
    {
      this.currentAni = 0;
    }
  }
  
}
