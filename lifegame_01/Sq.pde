class Sq
{
  float xpos = 0;
  float ypos = 0;
  float d = 10;
  boolean isBlack = false;
  
  Sq()
  {
    
  }
  
  void show()
  {
    square(this.xpos*this.d,this.ypos*this.d,this.d);
  }
  
}//end of class Sq
