void setup() {
  size(1920, 1080);
  background(0);
  drawGrid();
  for (int i = 2; i < 100; i++) {
    drawLine(i);
  }
}

void draw() {
}


void drawGrid() {
  // axis

  stroke(255);
  float x0 = marginL;
  float x1 = width - marginR;
  float y  = (height - (marginT + marginB))/2;

  line(x0, y, x1, y);
}

void drawLine(int i) {
  float x_0 = 1.0/((float)i);
  float x_1 = 1.0/((float)(i-1));

  float y = sin(i-1);

  float drawX_0 = map(x_0, xStart, xEnd, marginL, width - marginR);
  float drawX_1 = map(x_1, xStart, xEnd, marginL, width - marginR);

  float drawY   = map(y, -1, 1, height - marginB, marginT);
  stroke(255);
  line(drawX_0, drawY, drawX_1, drawY);
}

float marginR = 100;
float marginL = 100;
float marginT = 100;
float marginB = 100;

float xStart = 0;
float xEnd   = 2;
