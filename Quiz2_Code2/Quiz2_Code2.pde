float circleButtonX,circleButtonY;
float squareButtonX,squareButtonY;

boolean circleClick = false;
boolean squareClick = false;

color LeftBG,rightBG;

String displayQuote = "Quote Number";

void setup(){

size(600,300); 
noStroke();
rectMode(CENTER);
circleButtonX = 100;
circleButtonY = 100;
squareButtonX = 450;
squareButtonY = height/2;




}


void draw(){

 if(mouseX < circleButtonX || mouseY < circleButtonY){

    background(0,255,255);  

  } 
  

  ellipse(150,height/2,circleButtonX,circleButtonY);
  rect(450,height/2,100,100);
}

void mousePressed(){
  
  if(mouseX >= circleButtonX || mouseY >= circleButtonY){
    background(51,132,196);
   
  } if(mouseX >= squareButtonX || mouseY >= squareButtonY){
   background (225,124,227);
  }
  
}
