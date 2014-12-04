class SmEnemy
{
  float x, y;
  float vel;
  
  SmEnemy(float x, float y)
  {
    this.x = x;
    this.y = y;
    this.vel = 2;
  }
  
  void display()
  {
    drawSmAlien(this.x-11,this.y-5,3);
  }
  
  void move()
  {
    this.x += this.vel;
    if(this.x > width*.9){
      this.x = width*.9;
      this.vel *= -1;
      this.y += 30;
    }
    if(this.x < width*.1){
      this.x = width*.1;
      this.vel *= -1;
      this.y += 30;
    }
  }
  
  void shoot()
  {
    Bullet b = new Bullet(this.x, this.y, 10);
    bullets.add(b);
  }
  
  void hitCheck()
  {
    for(int i=0; i<bullets.size(); i++){
      Bullet b = (Bullet) bullets.get(i);
      float distBetween = dist(b.x,b.y,this.x,this.y);
      if(distBetween < 15 && b.vel < 0){
        sm_enemies.remove(this);
        bullets.remove(b);
        fireW1 = new DebrisSys(20, new PVector(this.x,this.y),10);
      }
    }
  }
}
