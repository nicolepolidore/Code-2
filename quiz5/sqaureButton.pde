class squareButton{
  
  float rectX = 200;
  float rectY = 200;
  float rectWidth = 100;
  float rectHeight= 200;
  int size;
  color fill;
  color newColor,activeColor;
  
  float totalTime = .5;
  int startTime;
  boolean buttonPress = false;
  PFont f;

  
  
  squareButton(){
    
    size = 70;
  totalTime = totalTime * 1000;
  startTime = millis();
  newColor = color(255,23,201);
  f = createFont ("Arial",50, true);
    
  }
  
  void buttonOneDisplay(){
    
 
       
        fill(newColor);
     rect(rectX, rectY, rectWidth, rectHeight);
     fill(0);
       textFont(f,50);
      text("q", 240,300);
    
  }
  
  void buttonTwoDisplay(){
    fill(fill);
    rect(rectX +200, rectY - 50, rectWidth, rectHeight/2);
  }
  
  void buttonThreeDisplay(){
    fill(fill);
    rect(rectX -100, rectY + 50, rectWidth-20, rectHeight/2);
    
  }
  void buttonFourDisplay(){
    fill(fill);
    rect(rectX-100, rectY+200, rectWidth/2, rectHeight/2);
    
  }
  
  void hitButtonOne(){
    if(mouseX > rectX &&
    mouseX < rectX + rectWidth && 
    mouseY > rectY && 
    mouseY < rectY + rectHeight) { 
      if(squareButtonClicked){
       
        squareButtonClicked = true;
color(255,0,0);
newStartTime();
      }
      println(squareButtonClicked);
    }
  }
  
  void newStartTime(){
          if(millis() > totalTime + startTime){
            squareButtonClicked = true;
            fill(255);
          
        }
}
        
       
 
}
 
