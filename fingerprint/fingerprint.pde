PImage fingerprintImage;
float[] randFill = new float[3];

void setup(){
  frameRate(60);
  size(450,800);
  strokeWeight(6);
  
  randFill[0] = random(100,255);
  randFill[1] = random(100,255);
  randFill[2] = random(100,255);
  fill(randFill[0],randFill[1],randFill[2]);
  // Load the fingerprint image
  fingerprintImage = loadImage("fingerprint.png");
}

void draw(){
  background(150);
  if(mousePressed)
   {
      int heartRate = 96;
      delay(heartRate + 100);
      stroke(random(0,150));
      ellipse(mouseX,mouseY,100,153);
      // Fingerprint - 100/153
      tint(255, (int)random(50,255));
      image(fingerprintImage, mouseX - (100/2), mouseY - (153/2));
   }
}
