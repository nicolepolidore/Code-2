class squareButton{
  
  float rectX = 200;
  float rectY = 200;
  float rectWidth = 60;
  float rectHeight = 70;
  int size;
  color fill;
  
  color bgColor = color (200,100,200);
  boolean squareButtonClicked = false;
  
  squareButton(){
    
    size= 70;
    fill = color(0,100,200);
    
  }
  
  void displaySquare(){
   fill(fill);
    rect(rectX,rectY, rectWidth, rectHeight);
  }
 
  
  void hitDetection(){
    if(squareButtonClicked){
     bgColor = color(0, 100, 200); // starts w/ pink
  }else{
    bgColor = color(220, 100, 200);
  }if ( mouseX > rectX && mouseX < rectX + rectWidth && mouseY > rectY && mouseY < rectY + rectHeight) { 
    bgColor = color(0, 100, 200);
  } else {
    bgColor = color(220, 100, 200);
  }
    
  }
}
