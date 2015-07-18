 
    import ddf.minim.*;             //at the very top of your sketch

  int xPos = 0;
  int yPos = 200;
  int xDir = 0;
  int yDir = 1;
  int xWidth = 1100;
  int yHeight = 700;
  int Speed = 10;
  int xPad = xWidth/2;
  int yPad = yHeight-50;
  boolean stopGame = false;
  Minim minim;                
  AudioSample sound;           

void setup() {
  size(xWidth,yHeight);
  minim = new Minim (this);   
  sound = minim.loadSample("squelch.wav", 128);//in the setup method  
}

void draw() {
  background(100,100,255);
  if (!stopGame){
  drawBall();
  drawPaddle();
  moveXPos();
  moveYPos();
  }
  else 
  drawPaddle();

}
    
  
  void moveXPos(){
    if(xDir == 0){
      if (xPos>= width){
        xDir = 1;
      }
      else {
        xPos +=Speed;
      }
    }
    else {
      if (xPos<=0){
        xDir = 0;
      }
      else {
        xPos -=Speed;
      }
    }
  }
  
  void moveYPos(){
   if(yDir == 0){
    if (yPos>= height-100){
      if (checkPaddleHit()){
        yDir = 1;
      }
      else
      {
     stopGame = true;
       sound.trigger();
      }
    }
    else {
      yPos +=Speed;
    }
  }
  else {
    if (yPos<=0){
      yDir = 0;
    }
    else {
      yPos -=Speed;
    }
  } 
  }
  
void drawBall(){
  fill(255,0,100);
  stroke(250,255,250);
  ellipse(xPos,yPos,100,100);
}
void drawPaddle(){
   fill(0,0,0);
  noStroke();
  rect(mouseX, yPad, 100, 20);
}

boolean checkPaddleHit(){
  if (xPos >= mouseX && xPos <= mouseX+100)
    return true;
  else
    return false;
}

