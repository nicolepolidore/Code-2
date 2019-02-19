class circleButton{
  
 float circX= width/2;
 float circY = height/2;
 float circWidth = 60;
 float circHeight = 60;
 color fill;
 int size;
 boolean circleButtonClicked = false;
  
circleButton(){
 
  size= 70;
  fill = color(227,0,225);
  
}

void display(){
  
 fill(fill);
 ellipse(circX,circY,size,size);
}

void circleHit(){
  float d = dist(circX, circY, mouseX, mouseY);

  
   if(d<circWidth/2){
     
     circleButtonClicked = true;
     fill(200,100,100);
     sb.displaySquare();
}
  println(circleButtonClicked);

  
}



}
