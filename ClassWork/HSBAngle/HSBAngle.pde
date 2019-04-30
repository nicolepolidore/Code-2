// HSB Color Wheel



float angle = 35;
float dist = 100;



void setup() {

  size(500, 500);
  noStroke();

}



void draw() {

  colorMode(RGB);
  background(0, 25, 51);
  colorMode(HSB, 360, 100, 100);

  //dist = sin(radians(angle)) * 100 + 50; //color added

  float x = cos(radians(angle)) * dist;
  float y = sin(radians(angle)) * dist;
  
  float x2 = cos(radians(angle+50)) * dist;
  float y2 = sin(radians(angle+50)) * dist;
  
  float x3 = cos(radians(angle+100)) * dist;
  float y3 = sin(radians(angle+100)) * dist;

  

  

  fill(0, 0, 100);
  ellipse(250, 250, 5, 5);
  fill(angle, 100, 100);
  ellipse(x + 250, y + 250, 30, 30);
  

  fill(angle,100,100);
  ellipse(x2+250,y2+250,30,30);
  
  fill(angle,100,100);
  ellipse(x3+250,y3+250,30,30);
  
  
  
  angle += 1;
  
 // angle = int(degrees(atan2(mouseY - 250,mouseX-250)));
 if(angle<0)angle+=360;
  angle %= 360;
  
  

}

void keyPressed(){
  
  if(key == '='){
    angle++;
    
  }
  
  if(key == '-'){
    angle--;
  }
  
}

// Add in key presses to move the bigger circle
