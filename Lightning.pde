int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;

void setup(){
  size(400, 400);
  background(0);
  noLoop();
  frameRate(10);
}

int R;
int G;
int B;

void draw() {
  background(0);
  while(endX <= 400) {
    endX = startX + (int)(Math.random()*10);
    endY = startY + (int)(Math.random()*100)-50;
    stroke(R, G, B);
    strokeWeight(2);
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
}

void mousePressed(){
  startX = 0;
  startY = 150;
  endX = 0;
  endY = 150;
  R = (int)(Math.random()*255);
  G = (int)(Math.random()*255);
  B = (int)(Math.random()*255);
  redraw();
}
