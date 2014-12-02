// now define a group of particles as a particleSys
class DebrisSys
{
  
   ArrayList particles; // all the particles
   PVector source; // where all the particles emit from
   color shade; // their main color
  
   // constructor
   DebrisSys(int num, PVector init_loc) 
   {
      particles = new ArrayList();
      source = init_loc.get();  // you have to do this to set a vector equal to another vector
      shade = color(random(255),random(255),random(255));  
      for (int i=0; i < num; i++) 
      {
         particles.add(new Debris(source,shade));
      }
   }
    
   // what to do each frame
   void run() 
   {
      // go through backwards for deletes
      for (int i=particles.size()-1; i >=0; i--) 
      {
         Debris p = (Debris)particles.get(i);
          
         // update each particle per frame
         p.run();
         if (!p.alive()) // what is that '!' thingy??
         {
            particles.remove(i);
         }
      }
   }
    
   boolean dead() 
   {
      if (particles.isEmpty()) 
      {
         return true;
      } 
      else 
      {
         return false;
      }
   }
}

