PVector offset = new PVector (50,0);
float degrees = PI;
color colorFill;


void setup(){
 background(0);
 size(800,800);
 noStroke();
 colorMode(RGB, 255,255,255);

 colorFill = color(255,255,0);
 offset.rotate(radians(45));
 smooth();

}

void draw(){

offset.rotate(radians(1));
background(0);
fill(colorFill);


translate(width/2, height/2);
ellipse(offset.x*2, -offset.y*3, 50, 50); 
//the offset.y is multiplied by 3 because I think that is what you meant by "pulse"
rotate(radians(72));
ellipse(offset.x*2, -offset.y*3, 50, 50);

rotate(radians(72));
ellipse(offset.x*2, -offset.y*3, 50, 50);

rotate(radians(72));
ellipse(offset.x*2, -offset.y*3, 50, 50);

rotate(radians(72));
ellipse(offset.x*2, -offset.y*3, 50, 50);
}


    
  
  
