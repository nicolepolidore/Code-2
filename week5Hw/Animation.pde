class Animation{
  
  PImage [] walkingSprite = new PImage [6];
  int frame;
  int amountFrames;
  int images;
 
  Animation(){
    amountFrames = 4;
    
   walkingSprite[0] = loadImage("BoyCharacterWalkingSpriteSheet (2).png");
   walkingSprite[1] = loadImage("BoyCharacterWalkingSpriteSheet (3).png");
   walkingSprite[2] = loadImage("BoyCharacterWalkingSpriteSheet (4).png");
   walkingSprite[3] = loadImage("BoyCharacterWalkingSpriteSheet (5).png");
   walkingSprite[4] = loadImage("BoyCharacterWalkingSpriteSheet (6).png");
   walkingSprite[5] = loadImage("BoyCharacterWalkingSpriteSheet (7).png");
    
  }


void displayWalk(){
  if(walk){
    walk = true;
    frame = (frame +1) % amountFrames ;
    image(walkingSprite[frame], x,y);
    
  } 

}
  
void displayStand(){
 if(still){
  image(walkingSprite[0],x,y);
 }
}

}
