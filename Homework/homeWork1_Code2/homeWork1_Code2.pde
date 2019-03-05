PVector pos, startPos, velocity,target;
boolean isMoving;
int size = 70;
float easing = .03; //easing from my understanding is the delay of its movement
float x,y;
float totalTime = 3;
float click =0;
float endTime = 0;


void setup(){
 background(95,48,48);
 size(1000,1000);
 noStroke();
 totalTime *= 1000;
 pos = new PVector (400,800);
 target = new PVector();
 velocity = new PVector();
 
}

void draw(){
 background(95,48,48);
 fill(250,229,63);
x+= (mouseX -x) *easing; // if x is the part of the position  where the ellipse goes, it has to add
 //to the mouseX - x * easing part of the position of the ellipse. so, with that equation added to the x and also y, it effects the movement of the ellipse.
 y+= (mouseY - y) * easing;
 
 translate(x,y);

 ellipse(x,y,size*2,size*2);
 fill(0);
 ellipse(x+30,y,size/2,size/3);
 ellipse(x-30,y,size/2,size/3);
 ellipse(x,y+25,size,size/4);
fill(255,0,0);
 ellipse(x-30,y,size/7,size/7);
 ellipse(x+30,y,size/7,size/7);

if(isMoving ==true){
  
  
}
  
}

void mouseClicked(){
target.x = mouseX;
target.y = mouseY;
isMoving = true;



}
