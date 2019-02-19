class squareButton{
  
  float rectX = 200;
  float rectY = 200;
  float rectWidth = 100;
  float rectHeight = 70;
  int size;
  color fill;
  
  color bgColor = color (200,100,200);

  squareButton(){
    
    size= 70;
    fill = color(0,100,200);
    
  }
  
  void displaySquare(){
   fill(fill);
    rect(rectX,rectY, rectWidth, rectHeight);
  }
 
  
  void hitDetection(){
    if(mouseX > rectX &&
    mouseX < rectX + rectWidth && 
    mouseY > rectY && 
    mouseY < rectY + rectHeight) { 
      
       if(squareButtonClicked){
           squareButtonClicked = false; 
          }else{
            squareButtonClicked = true;
           // cb2.displaycButton();
          }    
      }
}

}
