PVector velo,pos;
 int facingDirection = 1;
 int frameNumber = 0;
 float speed = -10;
 int numFrames = 5;
 PImage[] walk = new PImage[numFrames];
 PImage stand = new PImage();
 boolean chooseNewDirection = true;
 
   
 int STAND = 0;
 int WALK = 1;
 int STATE = STAND;
 
 
class Character {

 String [] stateNames = {"STAND","WALK"};
 float [][] choices = {
   
   {.25,.25,.25,.25,.25},
   {.25,.25,.25,.25,.25}
  
 };
 
 
 
 Character(){
   velo = new PVector(0,0);
   pos = new PVector (random(width),random(height));
   
   stand = loadImage("frame1Code.png");
   
   walk[0] = loadImage("frame1Code.png");
   walk[1] = loadImage("frame2Code.png");
   walk[2]= loadImage("frame3Code.png");
   walk[3] = loadImage("frame4Code.png");
   walk[4] = loadImage("frame5Code.png");
 }
 
 void update(){
   
  pos.add(velo);
   if(pos.y < 0){
   pos.y = height; 
  }
  if(pos.x > width){
   pos.x = 0; 
  }else if(pos.x < 0){
   pos.x = width; 
  }
   if(chooseNewDirection){
   facingDirection = (random(1) < .5 )?1:-1;
   chooseNewDirection = false;
  }
   
    switch(STATE){
   
  case 0:
    default:
    STATE = getNewState();
  break;
    
   case 1: //WALK
     velo = new PVector(-facingDirection * speed, 0);
    
   break;

    }
 
 }
 
void displayCharacter(){
  pushMatrix();
  translate(pos.x,pos.y);
  scale(facingDirection,1);
  
  switch(STATE){
   case 1:
   playWalkAnimation(); 
   break;
   
   case 0:
   default:
   image(stand,0,0);
   break;
   
   
  }
  popMatrix();
}

void playWalkAnimation(){
 image(walk[frameNumber], 0,0); 
 if(frameCount%speed ==0){
      frameNumber++;

  if(frameNumber>=numFrames){
   STATE = getNewState();
   chooseNewDirection = true;
  };
 } 
}

int getNewState(){
 frameNumber =0;
 float rand = random(1);
 float currentTotal = 0;
 float [] range = choices[STATE];
 for(int i = 0; i < range.length/2; i++){
  currentTotal += range[i];
  if(rand < currentTotal){
   return i; 
  } 
 }
   return 0;
}
}  
