boolean walk = false;
boolean still = true;
float x,y;
int standing = 1;
int walking = 0;
int STATE = standing;
Animation move, stand;
String words = " i'm trapped!";


void setup(){
 size(300,600);
 background(0);
 frameRate(5);
 
 move = new Animation();
 stand = new Animation();
  
}

void draw(){
  background(0);
 drawText();
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
void keyTyped(){
  switch(key){
    
  case 'd': //sometimes, when i exit out and run it again, pressing down the buttons doesn't work
  move.displayWalk();
  walk = true;
  STATE = walking;
  break;
  
  case 's':
  walk = false;
  still= true;
  STATE = standing;
  break;
}
}

void drawText(){
  
   fill(238,242,12);
     PFont font;
     font = loadFont ("TwCenMT-Bold-48.vlw");
     textFont(font);
     textSize(40);
     text(words,width/6,50);
}
 
