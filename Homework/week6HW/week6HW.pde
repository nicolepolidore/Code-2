boolean walk = false;
boolean still = false;
float x,y;


  

//println(places[STATE]);

void setup(){
 size(1000,1000);
 background(0);
 frameRate(5);
 String places [] = {"walk", "stand"};
 float [][] movementChance = {
  {.3, .3, .2, .2},
  {.3,.1, .3, .3},
};
  move = new Animation();
 stand = new Animation();
  float rand = random(1);
  float current = 0;
  float [] whereToGoPercent = movementChance[STATE];
    for(int i =0; i < whereToGoPercent.length; i++){
    current += whereToGoPercent[i];
    if(rand< current){
    STATE =i;
    break;
  }
}
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
}
