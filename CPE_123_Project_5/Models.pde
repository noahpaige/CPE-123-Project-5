void drawAlien(float x, float y, float s)
{
  pushMatrix();
    translate(x, y);
    scale(s);

    fill(255);
    noStroke();
    rect(0,4,1,3);
    rect(1,3,1,2);
    rect(2,0,1,1);
    rect(2,2,1,5);
    rect(3,1,1,2);
    rect(3,4,1,2);
    rect(3,7,1,1);
    rect(4,2,1,4);
    rect(4,7,1,1);
    rect(5,2,1,4);
    rect(6,2,1,4);
    rect(6,7,1,1);
    rect(7,1,1,2);
    rect(7,4,1,2);
    rect(7,7,1,1);
    rect(8,0,1,1);
    rect(8,2,1,5);
    rect(9,3,1,2);
    rect(10,4,1,3);
  popMatrix();
}


void drawPlayer(float x, float y, float s)
{
  pushMatrix();
    translate(x,y);
    scale(s);
    //gray parts
  fill(220);
  rect(200, 40, 20, 140);
  rect(180, 120, 60, 100);
  rect(160, 200, 40, 40);
  rect(220, 200, 40, 40);
  rect(240, 240, 40, 40);
  rect(140, 240, 40, 40);
  rect(140, 260, 140, 40);
  rect(260, 260, 40, 60);
  rect(180,300, 60,40);
  rect(200,340,20,40);
  rect(300,280,20,60);
  rect(320,300,40,60);
  rect(340,260,20,120);
  rect(120,260,20,40);
  rect(100,280,60,40);
  rect(100,280,20,60);
  rect(80,300,20,60);
  rect(60,260,20,120);
  rect(280,200,20,40);
  rect(120,200,20,40);

  //red parts
  fill(255, 50, 50);
  rect(200, 220, 20, 40);
  rect(180, 240, 20, 40);
  rect(220, 240, 20, 40);
  rect(140,320,40,40);
  rect(160,300,20,20);
  rect(240,320,40,40);
  rect(240,300,20,20);
  rect(340,220,20,40);
  rect(60,220,20,40);
  rect(120,160,20,40);
  rect(280,160,20,40);

  popMatrix();
}

void drawPressStart(float x, float y, float s)
{
  pushMatrix();
    translate(x,y);
    scale(s);
    fill(255);
    noStroke();
    //P
    rect(0,0,1,7);
    rect(0,0,4,1);
    rect(4,1,1,2);
    rect(0,3,4,1);
    //R
    rect(6,0,1,7);
    rect(6,0,4,1);
    rect(10,1,1,2);
    rect(6,3,4,1);
    rect(8,4,1,1);
    rect(9,5,1,1);
    rect(10,6,1,1);
    //E
    rect(12,0,1,7);
    rect(12,0,5,1);
    rect(12,6,5,1);
    rect(12,3,4,1);
    //S
    rect(18,1,1,2);
    rect(18,5,1,1);
    rect(19,0,3,1);
    rect(19,3,3,1);
    rect(19,6,3,1);
    rect(22,1,1,1);
    rect(22,4,1,2);
    //S
    rect(24,1,1,2);
    rect(24,5,1,1);
    rect(25,0,3,1);
    rect(25,3,3,1);
    rect(25,6,3,1);
    rect(28,1,1,1);
    rect(28,4,1,2);
    
    //S
    rect(33,1,1,2);
    rect(33,5,1,1);
    rect(34,0,3,1);
    rect(34,3,3,1);
    rect(34,6,3,1);
    rect(37,1,1,1);
    rect(37,4,1,2);
    //T
    rect(39,0,5,1);
    rect(41,0,1,7);
    //A
    rect(45,2,1,5);
    rect(46,1,1,1);
    rect(47,0,1,1);
    rect(48,1,1,1);
    rect(49,2,1,5);
    rect(45,4,5,1);
    //R
    rect(51,0,1,7);
    rect(51,0,4,1);
    rect(55,1,1,2);
    rect(51,3,4,1);
    rect(53,4,1,1);
    rect(54,5,1,1);
    rect(55,6,1,1);
    //T
    rect(57,0,5,1);
    rect(59,0,1,7);
  popMatrix();
}
