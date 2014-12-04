class FinalBoss
{
  float x, y;
  float vel;
  int life;
  
  FinalBoss(float x, float y)
  {
    this.x = x;
    this.y = y;
    this.vel = 2;
    life = 30;

  }
  
  void display()
  {
    drawDeathStar(this.x-50,this.y-50,1);
  }
  
  void move()
  {
    this.x += this.vel;
    if(this.x > width*.9){
      this.x = width*.9;
      this.vel *= -1;
    }
    if(this.x < width*.1){
      this.x = width*.1;
      this.vel *= -1;
    }
  }
  
  void shoot()
  {
    float theta = PI/4;
    float bulletX;
    for (int i = 0; i < 10; i++)
    {
      bulletX =  10*cos(theta);
    bossBullet b = new bossBullet(this.x, this.y, new PVector(bulletX,10));
    bossBullets.add(b);
    theta += PI/20;    
    }
  }
  
  void hitCheck()
  {
    for(int i=0; i<bullets.size(); i++){
      Bullet b = (Bullet) bullets.get(i);
      float distBetween = dist(b.x,b.y,this.x,this.y);
      if(distBetween < DeathStar.width && b.vel < 0)
      {
        life -= 1; 
        bullets.remove(b);

      }
      if(life == 0)
      {
        final_boss.remove(this);
        bullets.remove(b);
        fireW1 = new DebrisSys(50, new PVector(this.x,this.y),50);
      }
    }
  }
}
