void setup() {
  size(1000, 1000);
  background(150);
  stroke(0, 50);
  fill(255, 200);
  float xstart = random(10);
  float ynoise = random(10);
  translate(width/2, height/2);
}

void draw() {
  float xstart = random(10);
  float ynoise = 0.02;
  float xnoise = xstart;
  for (float x = -(width/8); x <= (width/6); x+=8) {
    xnoise += 0.02;
    drawPoint(random(1000), random(1000), noise(xnoise, ynoise));
  }
  delay(100);
}

void drawPoint(float x, float y, float noiseFactor) {
  pushMatrix();
  translate(x * noiseFactor * 4, y * noiseFactor * 4);
  float edgeSize = noiseFactor * 260;
  ellipse(0, 0, edgeSize, edgeSize * random(1.3));
  popMatrix();
}
