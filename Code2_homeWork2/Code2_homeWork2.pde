
int speed = 3;
PVector pos, velocity;


void setup(){
 size(1000,1000);
 smooth();
 background(118,117,118);
 fill(255);
 rectMode(CENTER);
 ellipseMode(CENTER);
 pos = new PVector(100,200); //values for x and y
 velocity = new PVector();


  
}

void draw(){
  
   background(118,117,118);
   
    fill(255);
    rect(180,900,150,150); //button left
    rect(380,900,150,150); //button right
    rect(580,900,150,150); //button up
    rect(780,900,150,150); //button down
    
    fill(0);
    triangle(185,850,130,900,185,960); //left
    triangle(385,850,385,960,430,900); //right
    triangle(585,850,530,900,630,900); //up
    triangle(785,950,730,900,830,900);//down
    
    fill(0);
    ellipse(500,200,100,100);
   speed ++;
      
    if(mouseX > 180 && mouseX < 330 && mouseY > 900 && mouseY < 1050){ //left button
      velocity.x = -speed;     
    }else if (mouseX > 380 && mouseX < 380 + 150 && mouseY > 900 && mouseY < 1050){
     velocity.x = speed; 
    }else if ( mouseX > 580 && mouseX < 730 && mouseY > 900 && mouseY < 1050){
     velocity.y = -speed; 
    }else if ( mouseX > 780 && mouseX < 930 && mouseY >900 && mouseY <1050){
     velocity.y = speed; 
    }else{
      velocity.x =0;
      velocity.y = 0;
    }
      velocity.normalize();
      velocity.mult(speed);
      pos.add(velocity); 

     pushMatrix();
     translate(pos.x, pos.y);
     rotate(velocity.heading() );
     fill(31,112,155);
     rect(0,0,200,100);
     fill(251,255,46);
     ellipse(80, 30,20,20);
     ellipse(80,-30,20,20); 
     popMatrix();

}
    
