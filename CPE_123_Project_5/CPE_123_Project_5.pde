/*THINGS TO ADD:
* make sure ship can't move off screen
* make sure bullets are deleted when off screen
* add 3 waves of enemies 
* new enemy modelsl
* scoring (top left)
* differently colored enemies?
* END SCENE!
*/



ArrayList bullets;
ArrayList enemies;

int numCol = 8;
Player player1;
boolean gameStart = false;
boolean keyD = false, keyA = false;

void setup()
{
  size(1200, 700);
  startGame();
}

void draw()
{
  background(0); 
  drawAlien(width/2 - 88, height/2 - 64, 16);
  drawPressStart(width/2 - 124, height/2 + 80, 4);
  startScreen();
  
  if(gameStart){
    background(0);
    player1.display();
    movePlayer1();
    player1.hitCheck();
    showLives();
    handleEnemies();
    handleBullets();
    
    stroke(128);
    line(0,height/2,width,height/2);
    line(width/2,0,width/2,height);
  }
  else{
    background(0);
    drawAlien(width/2 - 88, height/2 - 64, 16);
    drawPressStart(width/2 - 124, height/2 + 80, 4);
  }
  
  //if (enemies.size() == 0)
  //{
   // playEndScene();
  //}
}

void startGame()
{
  player1 = new Player();
  bullets = new ArrayList();
  enemies = new ArrayList();
  generateEnemies();
}

void generateEnemies()
{
  for(int i=0; i<32; i++){
    float x = width*.1 + i%numCol*50;
    float y = 60 + int(i/numCol)*60;
    enemies.add(new Enemy(x,y));
  }
}

void handleEnemies()
{
  for(int i=0;i<enemies.size();i++){
    Enemy enemy = (Enemy) enemies.get(i);
    enemy.move();
    enemy.display();
    enemy.hitCheck();
    if(random(1)>.995){
      enemy.shoot();
    }
  }
}

void handleBullets()
{
  for(int i=0; i<bullets.size(); i++){
    Bullet b = (Bullet) bullets.get(i);
    b.move();
    b.display();
  }
}

void movePlayer1()
{
  if(keyD){
    player1.x += 5;
  }
  if(keyA){
    player1.x -= 5;
  }
}

void showLives()
{
  for(int i=0; i<=player1.lives; i++){
    drawPlayer(width-50*i, 20, 2);
  }
}

void startScreen()
{
  if (keyPressed){
    if (key == ' '){
      gameStart = true;
    } 
    if (key == 'q' || key == 'Q'){
      gameStart = false;
    }
  }
}

void keyPressed()
{
  if((key == 'd' || key == 'D') && gameStart){
    keyD = true;
  }
  else{
    if((key == 'a' || key == 'A') && gameStart){
      keyA = true;
    }
    else{
      if(key == ' ' && gameStart){
        player1.shoot();
      }
    }
  }
}

void keyReleased()
{
  if(key == 'd' || key == 'D'){
    keyD = false;
  }
  else{
    if(key == 'a' || key == 'A'){
      keyA = false;
    }
  }
}
  
      
      
