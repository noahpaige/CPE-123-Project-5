class DebrisSys
{
   ArrayList particles;
   PVector source;
   color shade;
  
   DebrisSys(int num, PVector init_loc) 
   {
      particles = new ArrayList();
      source = init_loc.get();
      shade = color(random(255),random(255),random(255));  
      for (int i=0; i < num; i++) 
      {
         particles.add(new Debris(source,shade));
      }
   }
    
   void run() 
   {
      for (int i=particles.size()-1; i >=0; i--) 
      {
         Debris p = (Debris)particles.get(i);
         p.run();
         if (!p.alive())
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

