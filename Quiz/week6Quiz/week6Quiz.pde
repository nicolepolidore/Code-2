
int numCircles = 5;
float dist = 50;
float degrees = PI;
float [] angleX = new float[numCircles];
float [] angleY = new float [numCircles];
void setup(){
 background(0);
 size(800,800);
 colorMode(HSB, TWO_PI, 100,100);

}

void draw(){
  degrees +=1;
  background(0);
 float x = cos(radians(degrees))*100;
 float y = sin(radians(degrees))*100;
 
 ellipse(400+x,400 + y, 60,60);
 ellipse(400 +x+5, 400+y+5,60,60);
 
  

}
