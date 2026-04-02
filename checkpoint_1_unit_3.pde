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

  //buttons//

  if (dist(100, 100, mouseX, mouseY) < 25) {
    stroke(white);
  } else {
    stroke(midnightBlue);
  }
  
  fill(Blue);
  circle(100, 100, 50);

  if (dist(100, 300, mouseX, mouseY)< 25) {
    stroke(white);
  } else {
    stroke(midnightBlue);
  }
  
  fill(royalBlue);
  circle(100, 300, 50);
  
  if (dist(100, 500, mouseX, mouseY)< 25) {
    stroke(white);
  } else {
    stroke(midnightBlue);
  }
 
  fill(baysideBlue);
  circle(100, 500, 50);






  //indicator//
  stroke(midnightBlue);
  fill(selectedColor);
  square(250, 175, 250);
}

void mouseReleased() {
  if (dist(100, 100, mouseX, mouseY) < 25) {
    selectedColor = Blue;
  }

  if (dist(100, 300, mouseX, mouseY)< 25) {
    selectedColor = royalBlue;
  }

  if (dist(100, 500, mouseX, mouseY)< 25) {
    selectedColor = baysideBlue;
  }
}
