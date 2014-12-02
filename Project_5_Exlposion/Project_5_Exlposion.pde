
// declare a particle system
DebrisSys fireW1;


void setup() 
{
  size(500, 500);
  
  // range for the alpha is 0-100
  

  // start a new particle system
  fireW1 = new DebrisSys(20, new PVector(250,250));
  

  frameRate(40);
}

void draw() 
{
  background(0);

  // run the particle system
  fireW1.run();  
  
  if (fireW1.dead())
  {
    fireW1 = new DebrisSys(20, new PVector(250,250));
  }
}

void mousePressed()
{
  
   fireW1 = new DebrisSys(100, new PVector(mouseX, mouseY));
}
