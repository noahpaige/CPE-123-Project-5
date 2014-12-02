class Bullet
{
  float x, y;
  float vel;
  
  Bullet(float x, float y, float vel)
  {
    this.x = x;
    this.y = y;
    this.vel = vel;
  }
  
  void display()
  {
    rectMode(CENTER);
    rect(this.x,this.y,2,8);
    rectMode(CORNER);
  }
  
  void move()
  {
    this.y += this.vel;
    if(this.y > height || this.y < 0){
      bullets.remove(this);
    }
  }
}
