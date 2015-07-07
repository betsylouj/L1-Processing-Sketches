import ddf.minim.*;

PImage pictureOfRecord; 
int degrees=0;
 Minim minim; 
 AudioPlayer song; 
 
    void rotateImage(PImage image, int amountToRotate) {
          translate(width/2, height/2);
          rotate(amountToRotate*TWO_PI/360);                              
          translate(-image.width/2, -image.height/2);
}

void setup(){  
        pictureOfRecord= loadImage("images.jpg");   
      size(800,638);  
      minim = new Minim(this);
      song = minim.loadFile("Happy.mp3", 512);
}

void draw(){

  if (mousePressed)   {
   rotateImage(pictureOfRecord,degrees+=20);
     song.play();
  }
  else {
    song.pause();
  }
   image(pictureOfRecord, 0, 0);
  
   
}


