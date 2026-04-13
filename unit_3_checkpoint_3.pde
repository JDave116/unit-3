color darkPurple  = #230F2B;
color pink        = #F21D41;
color lightGreen  = #EBEBBC;
color medGreen    = #BCE3C5;
color darkGreen   = #82B3AE;

float sliderY;
float shade;

void setup() {
  size(600, 600);
  strokeWeight(5);
  stroke(pink);
  fill(pink);
  sliderY = 400;
  shade = 0;
}

void draw() {
  background(shade);

  shade = map (sliderY, 100, 400, 0, 255);

  line(100, 100, 100, 400);
  circle(100, sliderY, 50);
}

void mouseDragged() {
  controlSlider();
}

void mouseReleased() {
  controlSlider();
}

void controlSlider() {
  if (mouseX> 75 && mouseX < 125 && mouseY >100 && mouseY < 400) {
    sliderY = mouseY;
  }
}
//void setup() {
//  size(800, 600);
//  strokeWeight(5);
//  stroke(pink);
//  fill(pink);
//  sliderX = 400;
//  shade = 0;
//}

//void draw() {
//  background(shade);

//  shade = map(sliderX, 100, 700, 0, 255);

//  line(100, 300, 700, 300);
//  circle(sliderX, 300, 50);
//}

//void mouseDragged() {
//  controlSlider();
//}

//void mouseReleased() {
//  controlSlider();
//}

//void controlSlider() {
//  if (mouseX > 100 && mouseX < 700 && mouseY > 275 && mouseY < 325) {
//    sliderX = mouseX;
//  }
//}
