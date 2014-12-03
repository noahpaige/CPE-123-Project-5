ArrayList bullets;
ArrayList sm_enemies;
ArrayList med_enemies;
ArrayList lg_enemies;

int numCol = 8;
Player player1;
DebrisSys fireW1;
boolean gameStart = false;
boolean keyD = false, keyA = false;

void setup()
{
  numCol = 8;
  gameStart = false;
  keyD = false; 
  keyA = false;

  size(1200, 700);
  startGame();
  fireW1 = new DebrisSys(0, new PVector(0,0));
}

void draw()
{
  background(0); 
  drawMdAlien(width/2 - 88, height/2 - 64, 16);
  drawPressStart(width/2 - 124, height/2 + 80, 4);
  startScreen();
  
  if(gameStart){
    background(0);
    fireW1.run();
    player1.display();
    movePlayer1();
    player1.hitCheck();
    showLives();
    
    handleSmEnemies();
    handleBullets(); 
    if(sm_enemies.size() == 0){
      handleMdEnemies();
      
      if(med_enemies.size() == 0){
        handleLgEnemies();
        
      }
    }
  }
  else{
    background(0);
    drawMdAlien(width/2 - 88, height/2 - 64, 16);
    drawPressStart(width/2 - 124, height/2 + 80, 4);
  }
  
  if(player1.lives == 0){
     background(0);
     drawMdAlien(width/2 - 88, height/2 - 64, 16);
     drawGameOver(width/2-100,height/2+80, 4);
  }
}

void startGame()
{
  player1 = new Player();
  bullets = new ArrayList();
  sm_enemies = new ArrayList();
  med_enemies = new ArrayList();
  lg_enemies = new ArrayList();
  generateSmEnemies();
  generateMdEnemies();
  generateLgEnemies();
}

void generateSmEnemies()
{
  for(int i=0; i<32; i++){
    float x = width*.1 + i%numCol*50;
    float y = 60 + int(i/numCol)*60;
    sm_enemies.add(new SmEnemy(x,y));
  }
}
void generateMdEnemies()
{
  for(int i=0; i<32; i++){
    float x = width*.1 + i%numCol*50;
    float y = 60 + int(i/numCol)*60;
    med_enemies.add(new MdEnemy(x,y));
  }
}
void generateLgEnemies()
{
  for(int i=0; i<32; i++){
    float x = width*.1 + i%numCol*50;
    float y = 60 + int(i/numCol)*60;
    lg_enemies.add(new LgEnemy(x,y));
  }
}

void handleSmEnemies()
{
  for(int i=0;i<sm_enemies.size();i++){
    SmEnemy enemy = (SmEnemy) sm_enemies.get(i);
    enemy.move();
    enemy.display();
    enemy.hitCheck();
    if(random(1)>.995){
      enemy.shoot();
    }
  }
}
void handleMdEnemies()
{
  for(int i=0;i<med_enemies.size();i++){
    MdEnemy enemy = (MdEnemy) med_enemies.get(i);
    enemy.move();
    enemy.display();
    enemy.hitCheck();
    if(random(1)>.995){
      enemy.shoot();
    }
  }
}
void handleLgEnemies()
{
  for(int i=0;i<lg_enemies.size();i++){
    LgEnemy enemy = (LgEnemy) lg_enemies.get(i);
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
  for(int i=0;i<=5;i++){
    fill(0,200,0);
    stroke(0,200,0);
    rect(width-50*i,12,41,39);
  }
  for(int i=0; i<=player1.lives; i++){
    drawPlayer(width-50*i, 10, .1);
    drawLives(width-335,25,3);
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
      setup();
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
