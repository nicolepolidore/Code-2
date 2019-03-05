
int x;
int y;
int xSpeed;
PVector pos, vel, acc;
float ballW = 200;
float ballH = 200;
PVector gravity = new PVector(0,1);
boolean isCaught = false;


void setup(){

  size(1000,1000);
  pos = new PVector(700,500);
  vel = new PVector(0,0);
  acc = new PVector(0,.2);
  xSpeed = 2;
  x = width/2;
  y = height/2;
}



void draw(){
 
  background(25,181,193);
  fill(250,156,249);
  ellipse(pos.x,pos.y,ballW,ballH); 
  pos.add(vel);
  vel.add(acc);
  pos.x += xSpeed;
  if(pos.x < ballW/2){
   
    xSpeed *=-1;
    vel.x = vel.x *-.8;
    pos.x = ballW/2;
  }
  
  if(pos.x > width -(ballW/2)){
   vel.x = vel.x *-.8;
  xSpeed *=-1;
   pos.x = width- (ballW/2);
  }

  if(pos.y > height -(ballH/2)){
   vel.y = vel.y *-.8;
   pos.y = height - (ballH/2);
  }
}

 void mouseDragged(){

   if(dist(pos.x,pos.y,pmouseX,pmouseY)< ballW /2){
    isCaught = true;
    pos.x = mouseX;
    pos.y = mouseY;
   
  }
 }
  
 void mouseReleased(){
      isCaught = false;
      acc.x = acc.x *1;
      acc.y = acc.y *1;
      vel.x = vel.x *1;
      vel.y = vel.y *1;
      pos.x= pos.x +1;
      pos.y = pos.y +1;
 
    }
  
