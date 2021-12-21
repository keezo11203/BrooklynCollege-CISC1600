float d=500; 
float t=240; 
float x=0; 
float y=0; 
float xSpeed = 0;
float ySpeed = 0;
boolean keyUp, keyDown, keyLeft, keyRight;
int i = 0;
PFont f;
void setup() { 
  size(800, 500);
  background(0);
  noStroke();
  f = createFont("Arial", 16, true);
} 

void draw() { 
  textFont(f,16);
  fill(0, 30);
  fill(255);
  ellipse(random(width), random(height), 4, 4);
  textAlign(LEFT);
  text("Left Arrow to Move Left - Right Arrow to Move Right", width/2, 450);

  road(); 
  
  
  if (x>(width-20)) { 
    x=(width-20);   
  }; 
  
  if (x<=0) { 
    x=0; 
  };
  
  
  car(x, y);
  countSpeed();
  changePosition();
  
  xSpeed *= 0.9;
  ySpeed *= 0.9;
}

void countSpeed() {
  if (keyLeft) xSpeed-= 0.7;
  if (keyRight) xSpeed+= 0.7;
  if (keyUp) ySpeed-= 0.7;
  if (keyDown) ySpeed+= 0.7;


}

void changePosition(){
  x+=xSpeed;
}
void keyPressed() {
  if (keyCode == LEFT) {
    keyLeft = true;
  }
  if (keyCode == RIGHT) {
    keyRight = true;
  }
}

void keyReleased() {
  if (keyCode == LEFT) {
    keyLeft = false;
  }
  if (keyCode == RIGHT) {
    keyRight = false;
  }
}

void car(float x, float y) { 
  pushMatrix(); 
  translate(x, y); 
  fill(#F56804); 
  noStroke(); 
  rectMode(CENTER); 
  rect(0, height/2, 40, 20); 
  fill(#F2D7D5); 
  ellipse(-15, height/2+9, 10, 10); 
  ellipse(15, height/2+9, 10, 10); 
  popMatrix();
} 
 
void road() { 
  fill(#F20C0C); 
  rect(width/2, height/2+10, 850, 50);
} 
