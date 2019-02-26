
int speed = 3;
PVector pos, velocity;
String display = "don't hit the parked cars!";


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
  
   background(88,87,87);
   
   Collision();
   drawText();
   
    fill(229,187,250);
    rect(180,900,150,150); //button left
    rect(380,900,150,150); //button right
    rect(580,900,150,150); //button up
    rect(780,900,150,150); //button down
    
    fill(255);
    triangle(185,850,130,900,185,960); //left
    triangle(385,850,385,960,430,900); //right
    triangle(585,850,530,900,630,900); //up
    triangle(785,950,730,900,830,900);//down
     
    
    fill(92,222,149);
    rect(600,600,100,200); // car 1
    fill(255,255,0);
    ellipse(570,530,20,20);
     ellipse(630,530,20,20);
    
    fill(139,92,222);
    rect (800, 300, 100,200); // car 2
    fill(255,255,0);
    ellipse(770,230,20,20);
    ellipse(830,230,20,20);
    
    fill(186,92,222);
    rect(300,400,100,200);//car 3
    fill(255,255,0);
    ellipse(270,330,20,20);
    ellipse(330,330,20,20);
    
    
   
   
       
   
    
    
   

      
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
    void Collision(){
      
     float d = dist(600,600,pos.x,pos.y); //x1,y1,x2,y2
     float e = dist (800,300,pos.x,pos.y);
     float f = dist (300,400,pos.x,pos.y);
     
     if(d <=200 || d <= 100){
      display = "Game Over!";
      
     }else if( e <= 200 || d <=100){
       
       display = "Game Over!";
     }else if(f <= 200 || d <= 100){
       
       display = "Game Over!";
     }
     
    }
    
    void drawText(){
     fill(222,92,116);
     PFont font;
     font = loadFont ("TwCenMT-Bold-48.vlw");
     textFont(font);
     textSize(50);
     text(display,270,100);
    }
