class Player
{
  float x, y;
  int lives;
  int score;
  boolean canShoot;
  int timeLastShot;
  int coolDown;
  
  
  Player()
  {
    this.x = width/2;
    this.y = height-20;
    this.lives = 5;
    this.timeLastShot = 0;
    this.coolDown = 200;
  }
  
  void display()
  {
    drawPlayer(this.x-20,this.y-25,.1);
  }
  
  void shoot()
  {
    if(millis()-timeLastShot > coolDown){
      Bullet bullet = new Bullet(this.x,this.y-12,-6);
      bullets.add(bullet);
      timeLastShot = millis();
    }
  }
  
  void hitCheck()
  {
    for(int i=0; i<bullets.size(); i++){
      Bullet b = (Bullet) bullets.get(i);
      float distBetween = dist(this.x,this.y,b.x,b.y);
      if(distBetween<20 && b.vel > 0){
        fireW1 = new DebrisSys(20, new PVector(this.x,this.y),10);
        this.die();
        bullets = new ArrayList();
      }
    }
  }
  
  void bossHitCheck()
  {
    for(int i=0; i<bossBullets.size(); i++){
      bossBullet b = (bossBullet) bossBullets.get(i);
      float distBetween = dist(this.x,this.y,b.x,b.y);
      if(distBetween<20 && b.vel.y > 0){
        fireW1 = new DebrisSys(20, new PVector(this.x,this.y),10);
        this.die();
        bossBullets = new ArrayList();
        
      }
    }
  }
   void die() 
  {
    this.x = width/2;
    this.lives--;
  }
  
  void inBounds()
  {
    if (this.x > width)
    {
    this.x = width;
    }
    else if (this.x < 0)
    {
    this.x = 0;
    }
  }
} 
