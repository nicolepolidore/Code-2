class cButton2{
  float cButtonX= 700;
 float cButtonY = 500;
 float cButtonWidth = 100;
 float cButtonHeight = 100;
 color fill;
 int size;
 boolean cButtonClicked = false;
 float d2 = dist(cButtonX, cButtonY, mouseX, mouseY);
  
   
cButton2(){
 
  size= 100;
  fill = color(200,100,100);
  
}

void displaycButton(){
  
 fill(fill);
 ellipse(cButtonX,cButtonY,size,size);
}

  
  
}
