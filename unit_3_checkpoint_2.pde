// colors //
color pastelBlue   = #A7C7E7;
color Blue         = #0000FF;
color baysideBlue  = #277CE0;
color royalBlue    = #4169E1;
color midnightBlue = #191970;
color white        = #FFFFFF;

color selectedColor;


void setup() {
  size(600, 600);

  strokeWeight(5);
  stroke(midnightBlue);
  selectedColor = baysideBlue;
}

void draw() {
  background(pastelBlue);

  //button 1
  tactile(50, 100);
  fill(Blue);
  rect(50, 100, 150, 100);
  
  //button 2
  tactile(50, 250);
  fill(baysideBlue);
  rect(50, 250, 150, 100);
  
  //button 3
  tactile(50, 400);
  fill(royalBlue);
  rect(50, 400, 150, 100);


  // indicator
  stroke(midnightBlue);
  fill(selectedColor);
  rect(300, 100, 250, 400);
}

void tactile (int x, int y) {
  if (mouseX > x && mouseX < x+150 && mouseY > y && mouseY < y+100) {
    stroke(white);
  } else {
    stroke(midnightBlue);
  }
}

void mouseReleased() {
  if (mouseX > 50 && mouseX < 200 && mouseY > 100 && mouseY < 200) {
    selectedColor = Blue;
  }

  if (mouseX > 50 && mouseX < 200 && mouseY > 250 && mouseY < 350) {
    selectedColor = baysideBlue;
  }

  if (mouseX > 50 && mouseX < 200 && mouseY > 400 && mouseY < 500) {
    selectedColor = royalBlue;
  }
}
