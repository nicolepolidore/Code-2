float circ_x, circ_y;
float circ_speed =2;
float scalar;
float angle = 0.0;
float incr = 0.05;

void setup(){
  size(600,600);
  circ_x = width *.5;
  circ_y = height *.5;
  scalar = width/2 - 50;
  noStroke();
}

void draw(){
  background(0);
  
  float x1 = width/2 + sin(angle) * scalar;
  
  ellipse(x1, height/2, 100, 100);
  
  angle += incr;
  
 
  
}
