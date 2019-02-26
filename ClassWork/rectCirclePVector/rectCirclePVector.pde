//move 134 pixels at 48 degrees from 200,200
PVector offset = new PVector(134,0);



void setup(){
  background(255);
 size(400,400);
 rectMode(CENTER);
 offset.rotate(radians(48));

  
}

void draw(){
  fill(255,13,227);
 offset.rotate(radians(1));
 line(200,200, 200 + offset.x, 200 + offset.y);
 rect(200+offset.x,200 + offset.y,20,20);
  
}
