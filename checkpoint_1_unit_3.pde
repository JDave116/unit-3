// colors //
color pastelBlue   = #A7C7E7;
color Blue         = #0000FF;
color baysideBlue  = #277CE0;
color royalBlue    = #4169E1;
color midnightBlue = #191970;

void setup(){
  size(600,600);
  
  strokeWeight(5);
  stroke(midnightBlue);
}

void draw(){
  background(pastelBlue);
  
  //buttons//
  fill(Blue);
  circle(100,100,100);
  
  fill(royalBlue);
  circle(100,300,100);
  
  fill(baysideBlue);
  circle(100,500,100);
  
  //indicator//
  square(275,200,200);
}
  
