class spaceShip 
{
  PVector loc, stop, begin;
  PVector dir;
  float speed;  
  float dist;
  color c;
  boolean alive;

  spaceShip (PVector start, PVector end) 
  {  
    // set the beginning location of the car.  "get" makes a copy of the vector.
    begin = start.get();

    // the current location is originally at the beginning
    loc = start.get();

    // the location the car is heading
    stop = end.get();

    // set the direction of the car by subtracting the start location from the end location
    end.sub(start);
    dir = end.get();
    dist = dir.mag();  // set the distance before normalizing
    dir.normalize();   // after setting distance - normalize the direction

    // get a random speed and color
    speed = 4;  
    alive = true;
  }

  void drawP() 
  {
    float more;
    PVector temp;

    temp = new PVector(stop.x, stop.y);
    temp.sub(loc);
    more = temp.mag();

    if (alive) 
    {
      pushMatrix();
      translate(loc.x, loc.y);
      scale( (more/dist)*1.6 );
      drawPlayer(0, 0, 2);
      popMatrix();
    }
  }

  void drive() 
  {
    float soFar;  // how far the car has gone so far
    PVector temp;

    // Create a temporary vector hold the start location
    // to figure out how far the car has already driven.
    temp = new PVector(begin.x, begin.y);
    temp.sub(loc);
    soFar = temp.mag();

    // Move the car if it isn't to the end yet,
    // otherwise the car is done.
    if (soFar < dist) 
    {
      loc.x += dir.x*speed;
      loc.y += dir.y*speed;
    } else 
    {
      alive = false;
    }
  }
}

