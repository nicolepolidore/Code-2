class ThirdButton{
  
  float buttonX = 500;
  float buttonY = 100;
  float buttonWidth = 400;
  float buttonHeight = 300;
  int size;
  color fill;
  
  
  ThirdButton(){
    
    size= 100;
    fill = color(227,125,0);
    
  }
  
  void buttonDisplay(){
    
    fill(fill);
    rect(buttonX, buttonY, buttonWidth, buttonHeight);
    
  }
  
  void buttonHit(){
    if(mouseX > buttonX &&
    mouseX < buttonX + buttonWidth && 
    mouseY > buttonY && 
    mouseY < buttonY + buttonHeight) { 
      
      squareButtonClicked = false;   
     // circleButtonClicked = false;
       if(thirdButtonClicked){
           thirdButtonClicked = false; 
          }else{
            thirdButtonClicked = true;
          background(239,255,49);   
          }    
      }
     
    
  }
  
  
  
  }
  
