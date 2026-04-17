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

  // canvas
  fill(white);
  rect(150, -10, 900, 900);

  // drawing (ONLY on canvas)
  if (mousePressed && mouseX > 150) {
    noStroke();
    fill(selectedColor);
    ellipse(mouseX, mouseY, sliderSize, sliderSize);
  }

  // Buttons
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

  slider();
}

void tactile(int x, int y) {
  if (mouseX > x && mouseX < x+110 && mouseY > y && mouseY < y+40) {
    stroke(white);
  } else {
    stroke(black);
  }
}

void mouseDragged() {
  controlSlider();
}

void mouseReleased() {
  controlSlider();

  if (mouseX > 20 && mouseX < 130 && mouseY > 20 && mouseY < 60) {
    selectedColor = red;
  }
  if (mouseX > 20 && mouseX < 130 && mouseY > 70 && mouseY < 110) {
    selectedColor = purple;
  }
  if (mouseX > 20 && mouseX < 130 && mouseY > 120 && mouseY < 160) {
    selectedColor = darkBlue;
  }
  if (mouseX > 20 && mouseX < 130 && mouseY > 170 && mouseY < 210) {
    selectedColor = blue;
  }
  if (mouseX > 20 && mouseX < 130 && mouseY > 220 && mouseY < 260) {
    selectedColor = green;
  }
  if (mouseX > 20 && mouseX < 130 && mouseY > 270 && mouseY < 310) {
    selectedColor = yellow;
  }
  if (mouseX > 20 && mouseX < 130 && mouseY > 320 && mouseY < 360) {
    selectedColor = orange;
  }
}

void controlSlider() {
  if (mouseX > 60 && mouseX < 90 && mouseY > 400 && mouseY < 600) {
    sliderY = mouseY;

    // map slider to brush size
    sliderSize = map(sliderY, 400, 600, 5, 60);
  }
}

void slider() {
  fill(black);
  line(75, 400, 75, 600);
  circle(75, sliderY, sliderSize);
}
