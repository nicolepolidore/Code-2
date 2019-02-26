class Circles{
 
  float xPos, yPos, xSpeed, ySpeed;
  int size;
  color fill;
  
  Circles()
  {
   size = 20;
   fill = color(73,72,188);
   xPos = random(0, width);
   yPos = random(0,height);
   
   
   float yDir = random(-1,1);
   
   if(yDir<0 || yDir >0){
    ySpeed = 5; 
   }
     
    
  }
  
  void display(){
   fill(fill);
   ellipse(xPos,yPos, size,size);
    
  }
  
  void move(){
    
   xPos += xSpeed;
   yPos += ySpeed;
  }
  
  void checkBoundaries(){
    if(xPos >= width - size/2 || xPos <= 0 + size/2)
     {
        xPos = 20;
        ySpeed = 10;
     }
     
      if(yPos >= height - size/2 || yPos <= 0 + size/2)
      {
        yPos = 20;
        ySpeed = 5;
      }
    
  }
  
}
