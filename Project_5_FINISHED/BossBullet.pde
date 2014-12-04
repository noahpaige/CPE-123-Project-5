class bossBullet
{
  float x, y;
  PVector vel;

  bossBullet(float x, float y, PVector vel)
  {
    this.x = x;
    this.y = y;
    this.vel = vel;
  }

  void display()
  {
    rectMode(CENTER);
    fill(0, 0, 255);
    rect(this.x, this.y, 2, 8);
    rectMode(CORNER);
  }

  void move()
  {
    this.y += this.vel.y;
    this.x += this.vel.x;

    if (this.y > height || this.y < 0 || this.x > width || this.x < 0) {
      bossBullets.remove(this);
    }
  }
}

