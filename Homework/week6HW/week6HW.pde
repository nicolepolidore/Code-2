boolean walk = false;
boolean still = false;
float x,y;
Animation move,stand;

int STANDING = 0;
int WALKING = 1;
int STATE = STANDING;
  
float [] xPos = {0,325,555,980,1000};
float [] yPos = {0,325,555,980,1000};

  
  
void setup(){
 move = new Animation();
 stand = new Animation();
 size(1000,1000);
 background(0);
 frameRate(5);

 
 
}
void draw(){
  background(0);
   switch (STATE){
   case 0:
     move.displayWalk( );
     walk = true;
   break;
   
   case 1:
     stand.displayStand();
     still = true;
   break;    
  }
  float [][] movementChance = {
  {.3, .3, .2, .2},
  {.3,.1, .3, .3},
};
  float rand = random(1);
  float current = 0;
  float [] whereToGoPercent = movementChance[STATE];
    for(int i =0; i < whereToGoPercent.length; i++){
     xPos[i]++;
    current ++;
    if(rand< current){
    STATE =i;
    break;
  }
}
}
