//colors//
color redBrown = #562C29;
color darkPink = #AB5852;
color tan = #CB9979;
color sand = #EADAA0;
color yellow = #D69E49;
color militaryGreen = #838469;
color cobalt = #657268;
color navy = #476066;
color white = #FFFFFF;
color black = #000000;
//list of colors//
color[] colors = {redBrown, darkPink, tan, sand, yellow, militaryGreen, cobalt, navy};
//variables//
color selectedColor;
float sliderY;
float sliderSize;


PImage apple;
PImage banana;
boolean appleOn;
boolean bananaOn;

//setup//
void setup() {
  size(800, 800);
  strokeWeight(5);
  stroke(black);
  background(255);
  selectedColor = redBrown;
  sliderY = 600;
  sliderSize = 30;
  apple = loadImage("apple.png");
  appleOn = false;
  banana = loadImage("BANANA.png");
  bananaOn = false;
}






void draw() {
  //toolbar//
  fill(149, 145, 145);
  noStroke();
  rect(-10, -10, 160, 900);
  //buttons//
 
  clearButton();
  //drawing color buttons//
  for (int i = 0; i < colors.length; i ++) {
    int y = 20 + i * 50;
    drawButton(20, y, colors[i]);
  }
 
  slider();
  stamps();
  stamp1();
  load();
  saveButton();
}





// drawing color button+ tactile//
void drawButton (int x, int y, color selectedColor) {
  if (mouseX > x && mouseX < x + 110 && mouseY > y && mouseY < y+40) {
    stroke(white);
  } else {
    stroke(black);
  }
  strokeWeight(4);
  fill(selectedColor);
  rect(x, y, 110, 40);
  
  
  
}





//button functions//
void mouseReleased() {
  controlSlider();
  colorSelection();
  canvasClear();

  if (mouseX > 10 && mouseX < 70 && mouseY > 425 && mouseY < 475) {
    appleOn = true;  
  }else{
    appleOn = false;
  }

  if (mouseX > 80 && mouseX < 140 && mouseY > 425 && mouseY < 475) {
    bananaOn = true;
  }else{
  bananaOn = false;
  }
  
  
  if(dist(35,675,mouseX,mouseY) < 25){
    selectInput("Pick an image to load", "openImage");
  }
  
   if(dist(115,675,mouseX,mouseY)<25){
     selectOutput("Choose a name for your new image file", "saveImage");
   }
}





void mouseDragged() {
  controlSlider();

  if ( mouseX > 150 && mouseY > 0 && mouseY < height) {

    if ((appleOn == false) && (bananaOn == false)) {
      stroke(selectedColor);
      strokeWeight(sliderSize);
      line(pmouseX, pmouseY, mouseX, mouseY);
    } else if((appleOn == true) && (bananaOn == false)){
      image(apple, mouseX, mouseY, 60, 50);
    } else if((appleOn == false) && (bananaOn == true)){
      image(banana, mouseX, mouseY, 60,50);
    }
  }
}






//slider size adjustment//
void controlSlider() {
  if (mouseX > 60 && mouseX < 90 && mouseY > 500 && mouseY < 700) {
    sliderY = mouseY;
    sliderSize = map(sliderY, 500, 700, 60, 5);
  }
}






void slider() {
  stroke(black);
  strokeWeight(4);
  fill(selectedColor);
  line(75, 500, 75, 700);
  circle(75, sliderY, sliderSize);
}





//choosing a color using button//
void colorSelection() {
  for (int i = 0; i < colors.length; i++) {
    int y = 20 + i * 50;
    if (mouseX > 20 && mouseX < 130 && mouseY > y && mouseY < y+40) {
      appleOn = false;
      selectedColor = colors[i];
    }
  }
}





//clear button+tactile//
void clearButton() {
  int x = 20;
  int y = 720;
  strokeWeight(5);
  if (mouseX > x && mouseX < x + 110 && mouseY > y && mouseY < y+40) {
    stroke(white);
  } else {
    stroke(black);
  }
  fill(200);
  rect(x, y, 110, 40);
  fill(0);
  textAlign(CENTER, CENTER);
  textSize(37);
  text("CLEAR", x + 55, y + 20);
}



void canvasClear() {
  if (mouseX > 20 && mouseX < 130 && mouseY > 720 && mouseY < 760) {
    background(255);
  }
}


void stamps(){
   if(mouseX > 8 && mouseX < 72 && mouseY > 423 && mouseY < 477){
    stroke(white);
  }else{
    stroke(black);
  }
  
  
  rect(8,423,64,54);
  image(apple, 10, 425, 60, 50);
  
}

void stamp1(){
   if(mouseX > 78 && mouseX < 142 && mouseY > 423 && mouseY < 477){
     stroke(white);
   }else{
     stroke(black);
   }
   
   rect(78,423,64,54);
   image(banana,80,425,60,50);
}

void load(){
  if(dist(35,675,mouseX,mouseY) < 25){
    stroke(white);
    
  }else{
    stroke(black);
  }
  
  fill(white);
  circle(35,675,50);
  fill(black);
  textAlign(CENTER,CENTER);
  textSize(18);
  text("LOAD", 35,675);
}

void saveButton(){
  if(dist(115,675,mouseX,mouseY)<25){
    stroke(white);
    
  }else{
    stroke(black);
  }
  fill(white);
  circle(115,675,50);
  fill(black);
  textAlign(CENTER,CENTER);
  textSize(18);
  text("SAVE",115,675);
}

void saveImage(File f) {
  if (f != null){
    PImage canvas = get(150,0, 650,800);
    canvas.save(f.getAbsolutePath());
  }
}

void openImage(File f){
  if(f != null){
    int n = 0;
    while ( n<10){
      PImage pic = loadImage(f.getPath());
      image(pic,0,0);
      n = n+1;
    }
  }
}
