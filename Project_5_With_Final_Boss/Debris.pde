class Debris 
{
   PVector loc;
   PVector vel;
   PVector accel;
   float xr,yr;
   int life;
   color pcolor;
  
   Debris(PVector start,color myColor, int debrisLife) 
   {
      vel = PVector.fromAngle(random(2*PI));
      vel.setMag(random(2,3));
      pcolor = myColor;
      loc = start.get();
      xr = 8.0;
      yr = 8;
      life = debrisLife;
   }

   void run() 
   {
      updateP();
      renderP(); 
   }
    

   void updateP() 
   {
      loc.add(vel);
      life -= 1.0;
      xr -= random(.1);
   }
    
   void renderP() 
   {
      pushMatrix();
       stroke(255);
       fill(255, 70);
       translate(loc.x, loc.y);
       scale(random(.005,.01));
       tint(255,100+life);
       rect(loc.x,loc.y,900,900);
      popMatrix();
   }
    
   boolean alive() 
   {
      if (life <= 0.0) 
      {
         return false;
      } 
      else 
      {
         return true;
      }
   }
} 
