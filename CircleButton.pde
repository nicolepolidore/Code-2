class CircleButton{
  
 float circX= 500;
 float circY = 500;
 float circWidth = 60;
 float circHeight = 60;
 color fill;
 int size;
 boolean circleButtonClicked = false;
 float d = dist(circX, circY, mouseX, mouseY);
 color currentColor;
 color colorOne;
 color colorTwo;
   color colorThree;
   int numButtons = 25;
   float [] x = new float [numButtons];
   float [] y = new float [numButtons];
  
CircleButton(){
  currentColor = color(255);
  size= 90;
  for (int i = 0; i < numButtons; i++) {

    x[i] = 100+(i % int(sqrt(numButtons))) * 150;

    y[i] = 100 + (i / int(sqrt(numButtons))) * 150;

  }
  
  
}

void display(){
   fill(65,165,146);
  for(int i = 0; i < numButtons; i ++){
   ellipse(x[i],y[i],size,size);
    
  }
 // fill(65,165,146);
 //ellipse(circX,circY,size,size);
}

}
