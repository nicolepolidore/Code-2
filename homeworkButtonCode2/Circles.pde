class Circles{
 
  float xPos, yPos, xSpeed, ySpeed;
  int size;
  color fill;
  
  Circles()
  {
   size = 10;
   fill = color( random(255), random(255), random(255), random(255)); 
;
   xPos = random(0, width);
   yPos = height/2;

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
      if(yPos >= height - size/2 || yPos <= 0 + size/2)
      {
        yPos = 20;
        ySpeed = 5;
      }
    
  }
  
     
  }
  
