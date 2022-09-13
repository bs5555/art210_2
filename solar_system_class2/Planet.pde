class Planet
{
   float size = 20;  //planet size
   float dist = 100; //distance from sun
   float angle = 0;  //starting angle
   float speed = 1.0; //speed
   color col = color(255,255,255); //color
   Planet[] moons = new Planet[20]; //moons
   int nMoons = 0;
   int generation = 0;
   
   Planet(int gen)
   {
    this.generation = gen;
    if(this.generation > 0)
    {
      this.createMoons();
    }  
   }
   
   //show planet on the screen
   void show()
   {
     pushMatrix();
       rotate(radians(this.angle));
       translate(this.dist,0);
       noStroke();
       fill(this.col);
       circle(0,0,this.size);
       this.angle = this.angle+this.speed;
       for(int i = 0; i < this.nMoons; i = i + 1)
       {
         this.moons[i].show();
       }
     popMatrix();
   }
   
   void randomize()
   {
     this.size = this.generation*10; //random(10,40);         //planet size
     this.dist = random(50,400);        //distance from sun
     this.angle = random(360);          //starting angle
     this.speed = random(-1.0,1.0)/this.generation; //speed
     colorMode(HSB,360,100,100);
     this.col = color(this.generation*30,100,100); //color(random(255),random(255),random(255)); //color
   }
   
   void createMoons()
   {
     this.nMoons = floor(random(1,5));
     for(int i = 0; i < this.nMoons; i = i + 1)
     {
       this.moons[i]=new Planet(this.generation - 1);
       this.moons[i].randomize();
     }
   }
}
