void setup(){
  size(1100,700);
  background(165,61,151);
  
}

void draw(){
  
  for (int i= 1; i<100;i+=10){
    fill(colorChange+i,i/10,(255-colorChange-i));
//  ellipse(11*i,7*i,100,50);
//  float x = random(100);
//  float y = random(100);
    float x = getWormX(i);
    float y = getWormY(i);
    ellipse(x,y,100,50);
//    makeMagical();
if (colorChangeFlag == 0){
  colorChange ++;
  if (colorChange >=100)
  colorChangeFlag = 1;
}
else{
  colorChange --;
  if (colorChange <=0)
  colorChangeFlag = 0;
}


  }

  
}

float frequency = .001;
float noiseInterval = PI; 
int colorChange;
int colorChangeFlag=0;

void makeMagical() {
  fill( 0, 0, 0, 10 );rect(0, 0, width, height);noStroke();
}


float getWormX(int i) {
  return map(noise(i*noiseInterval + frameCount * frequency), 0, 1, 0, width);
}


float getWormY(int i) {
  return map(noise(i*noiseInterval+1 + frameCount * frequency), 0, 1, 0, height);
}

