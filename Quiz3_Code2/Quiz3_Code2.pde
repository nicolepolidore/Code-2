int numCircles = 50;

ArrayList<Circles> circleFall = new ArrayList<Circles>();
float [][]pos = new float [numCircles][numCircles];
color [] colors = new color[numCircles];



void setup(){
   background(198,242,255);
   size(1000,2000);
  
   
   for (int i=0; i < numCircles; i++){
    circleFall.add(new Circles()); 
    pos[i][0] = random(-100,height);
    colors[i] = color(0,255,0,random(0,10));
   }
}
   
   void draw (){
     background(198,242,255);
     
     
    for(Circles c: circleFall){
     c.checkBoundaries();
     c.move();
     c.display();
     
    }
     
   }
  
