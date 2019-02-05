float lineX = 100;
float rectX = 100;
color bgColor = color(220,100,200);
float rectWidth = 40;
float rectY = 120;
float rectHeight =60; 

boolean buttonIsClicked = false;

void setup() {
  size(300, 500);
}


void draw() {

  background( bgColor);
  line(lineX,0,lineX,height);
  rect(rectX,rectY, rectWidth, rectHeight); //button 
  
   hitDetection();
  
  if(buttonIsClicked){
     bgColor = color(0, 100, 200);
  }else{
    bgColor = color(220, 100, 200);
  }
}

void mouseClicked(){
      if ( mouseX > rectX && mouseX < rectX + rectWidth && mouseY > rectY && mouseY < rectY + rectHeight) { 
          if(buttonIsClicked){
           buttonIsClicked = false; 
          }else{
            buttonIsClicked = true;
          }
          //this if and else statement allows the button is change the color every time you click it
          
          //you can write this if and else with buttonIsClicked = !buttonIsClicked
      }
      println(buttonIsClicked);
}

void hitDetection(){
    if ( mouseX > rectX && mouseX < rectX + rectWidth && mouseY > rectY && mouseY < rectY + rectHeight) { 
    bgColor = color(0, 100, 200);
  } else {
    bgColor = color(220, 100, 200);
  }
  
}
