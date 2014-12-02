// define a particle
class Debris 
{
   PVector loc;
   PVector vel;
   PVector accel;
   float xr,yr;
   float life;
   color pcolor;
  
   // constructor
   Debris(PVector start,color myColor) 
   {
      vel = PVector.fromAngle(random(2*PI));
      vel.setMag(random(2,3));
      pcolor = myColor;
      loc = start.get();  // make a COPY of the start location vector
      xr = 8.0;
      yr = 8;
      life = 10;
   }
        
   // what to do each frame
   void run() 
   {
      updateP();
      renderP(); 
   }
    
   // a function to update the particle each frame
   void updateP() 
   {
      loc.add(vel);
      life -= 1.0;
      xr -= random(.1);
   }
    
   // how to draw a particle
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
    
    // a function to test if a particle is alive
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
