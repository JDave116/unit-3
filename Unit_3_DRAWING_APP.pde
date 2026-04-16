color red = #FF0F03;
color purple = #C703FF;
color darkBlue = #0A03FF;
color blue = #03CEFF;
color green = #03FF65;
color yellow = #FFE603;
color orange = #FF6803;
color white = #FFFFFF;
color black = #212121;

int selectedColor;
float sliderY;
float sliderSize;

void setup() {
  size(800, 800);
  strokeWeight(5);
  stroke(black);

  selectedColor = darkBlue;
  sliderY = 500;
  sliderSize = 30;
}

void draw() {
  background(149, 145, 145);

  //canvas//
  fill(white);
  rect(150, -10, 900, 900);
  fill(0);

  //Buttons//
  tactile(20, 20);
  fill(red);
  rect(20, 20, 110, 40);

  tactile(20, 70);
  fill(purple);
  rect(20, 70, 110, 40);

  tactile(20, 120);
  fill(darkBlue);
  rect(20, 120, 110, 40);

  tactile(20, 170);
  fill(blue);
  rect(20, 170, 110, 40);

  tactile(20, 220);
  fill(green);
  rect(20, 220, 110, 40);

  tactile(20, 270);
  fill(yellow);
  rect(20, 270, 110, 40);

  tactile(20, 320);
  fill(orange);
  rect(20, 320, 110, 40);

  //tactile2(75, sliderY, sliderSize);
  slider();
}

void tactile(int x, int y) {
  if (mouseX > x && mouseX < x+110 && mouseY > y && mouseY < y+40) {
    stroke(white);
  } else {
    stroke(black);
  }
}

//void tactile2(int x, sliderY, sliderSize) {
//  if (dist(x, sliderY, mouseX, mouseY)<sliderSize) {
//    stroke(white);
//  } else {
//    stroke(black);
//  }
//}
void mousePressed() {
  fill(selectedColor);
  noStroke();
  circle(mouseX, mouseY, sliderSize);
}

  void mouseDragged() {
    controlSlider();
    fill(selectedColor);
    noStroke();
    circle(mouseX, mouseY, sliderSize);
  }

  void mouseReleased() {
    controlSlider();
    fill(selectedColor);
    noStroke();
    circle(mouseX, mouseY, sliderSize);
  }

  void controlSlider() {
    if (mouseX > 70 && mouseX < 80 && mouseY > 400 && mouseY < 600) {
      sliderY = mouseY;
    }
  }

  void slider() {
    //slider//
    fill(black);
    line(75, 400, 75, 600);
    circle(75, sliderY, sliderSize);
  }
