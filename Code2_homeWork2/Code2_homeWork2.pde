float xPos = 200;
int speed = 1;

void setup(){
 size(1000,1000);
 smooth();
 background(90,112,234);
 fill(255);
 rectMode(CENTER);
 ellipseMode(CENTER);
  
}

void draw(){
   background(90,112,234);
    rect(100,200,100,200); //vehicle
    ellipse(70,120,20,20);
    ellipse(130,120,20,20);

    
    rect(180,900,150,150); //button left
    rect(380,900,150,150); //button right
    rect(580,900,150,150); //button up
    rect(780,900,150,150); //button down
    
    
    triangle(185,850,130,900,185,960);
    triangle(385,850,385,960,430,900);
    triangle(585,850,530,900,630,900);
    triangle(785,950,730,900,830,900);





    xPos = xPos + speed;
    if(xPos>width-20 || xPos<20){
     speed =-speed; 
    }
  
}

void mousePressed(){
  
  if (dist(mouseX, mouseY, xPos, 200)<=20)
  {
    speed=speed+1;
  }
} 
