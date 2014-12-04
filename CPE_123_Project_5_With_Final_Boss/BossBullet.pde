/**
not yet implemented.
I plan to make the boss shoot in an arc.
**/
class BossBullet
{
  float x, y;
  float vel;
  //color c; ADD BULLET COLOR FOR DEATH STAR
  
  BossBullet(float x, float y, float vel)
  {
    this.x = x;
    this.y = y;
    this.vel = vel;
  }
  
  void display()
  {
    rectMode(CENTER);
    fill(255);
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
