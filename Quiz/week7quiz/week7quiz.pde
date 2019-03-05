
int x;
int y;
int xSpeed;
int ySpeed;
PVector pos, vel, acc;
float ballW = 70;
float ballH = 70;
PVector gravity = new PVector(1,0);
boolean isCaught = false;


void setup(){

  size(1000,1000);
  pos = new PVector(700,500);
  vel = new PVector(0,0);
  acc = new PVector(0,0);
  xSpeed = 5;
  ySpeed = 5;
  x = width/2;
  y = height/2;
}



void draw(){

  background(25,181,193);
  fill(171,86,229);
  ellipse(x,y,ballW,ballH); 
  x+= xSpeed;
  y+= ySpeed;
  
  if((pos.x> -ballW/2) || (pos.x <  ballW/2)){
     xSpeed *= -1; 
     
     
  }
  
  if(pos.y >height - ballH/2){
    ySpeed *= -1; 
 
  }
}
 void mouseDragged(){
   if(dist(x,y,pmouseX,pmouseY)< ballW /2){
    x = mouseX;
    y = mouseY;
  }
 }
  
 void mouseReleased(){
       isCaught = false;
       x+=xSpeed;
       xSpeed *= -1;
       y+= ySpeed;
       ySpeed *= -1;
       vel.add(vel);
       acc.add(acc);
       
      
      
      
    }
  
