circleButton cb;
squareButton sb;

float circX= 500;
 float circY = 500;
 float circWidth = 60;
 float circHeight = 60;
 color fill;
 int size;
 boolean circleButtonClicked = false;
 float d = dist(circX, circY, mouseX, mouseY);
 
   float rectX = 200;
  float rectY = 200;
  float rectWidth = 60;
  float rectHeight = 70;
 
  
  color bgColor = color (200,100,200);
  boolean squareButtonClicked = false;

void setup(){
 
  size(1000,1000);
  cb = new circleButton();
  sb = new squareButton();
}

void draw(){
 
 cb.display();

sb.hitDetection();
 
sb.displaySquare();

}

void mouseClicked(){
  
 if(d<circWidth){
     circleButtonClicked = false;
 }else{
     circleButtonClicked = true;
}
  println(circleButtonClicked);


 if(mouseX > rectX &&
    mouseX < rectX + rectWidth && 
    mouseY > rectY && 
    mouseY < rectY + rectHeight) { 
       if(squareButtonClicked){
           squareButtonClicked = false; 
          }else{
            squareButtonClicked = true;
          }
      }
}
