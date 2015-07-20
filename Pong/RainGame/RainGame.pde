int   speed = 10;
int  y1Pos = 0;
int x1Pos = 400;
int score = 0;
int winScore = 20;
int counter = 0;
 
void setup(){
  size(1000,700);

}

void draw(){
  if (score<winScore){
    drawRain();
    drawBucket();
   
  }
  else {
    endGame();
  } 
   writeScore();
}

void drawRain(){
  if (y1Pos > height-100){
    checkCatch(x1Pos);
    x1Pos = (int) random(900)+50;
    y1Pos = 0;
  }
  
  background(204,214,215);
  noStroke();
  fill(22,99,233);
  ellipse(x1Pos,y1Pos,20,20);
  y1Pos +=speed+score*15/winScore;

}
void drawBucket(){
  stroke(111,35,7);
  if (score>=6*winScore/7)
    fill(22,99,233);
  else 
    fill(111,35,7);
  rect(mouseX,600,100,10);
  if (score>=5*winScore/7)
    fill(22,99,233);
  else 
    fill(111,35,7);
  rect(mouseX,610,100,10);
  if (score>=4*winScore/7)
    fill(22,99,233);
  else 
    fill(111,35,7);
  rect(mouseX,620,100,10);
  if (score>=3*winScore/7)
    fill(22,99,233);
  else 
    fill(111,35,7);
  rect(mouseX,630,100,10);
  if (score>=2*winScore/7)
    fill(22,99,233);
  else 
    fill(111,35,7);
  rect(mouseX,640,100,10);
  if (score>=winScore/7)
    fill(22,99,233);
  else 
    fill(111,35,7);
  rect(mouseX,650,100,10);
    
}
void endGame(){
  background(204,214,215);
  textSize(32);
  fill(22,99,233);
  text("You won!!!", 400,300);
}
void writeScore(){
  fill(0,0,0);
  textSize(16);
  text("Score: "+score,900,30);
  textSize(32);
  fill(188,0,255);
  text("Catch the Rain", 400,30);
}
void checkCatch(int x){
 if (x > mouseX && x < mouseX+100)
  score++;
 else if (score>0) 
 score--;
}
