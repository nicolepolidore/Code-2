class circleButton{
  
 float circX= 500;
 float circY = 500;
 float circWidth = 60;
 float circHeight = 60;
 color fill;
 int size;
 boolean circleButtonClicked = false;
 float d = dist(circX, circY, mouseX, mouseY);
  
circleButton(){
 
  size= 70;
  fill = color(148,240,222);
  
}

void display(){
  
 fill(fill);
 ellipse(circX,circY,size,size);
}

}
