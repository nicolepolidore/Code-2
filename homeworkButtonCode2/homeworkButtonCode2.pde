circleButton cb;
squareButton sb;
Circles c;
ThirdButton tb;

  // boolean circleButtonClicked = false; 
   boolean squareButtonClicked = false;
   boolean thirdButtonClicked = false;
   
  
   int numCircles = 30;
   ArrayList<Circles> circleFall = new ArrayList<Circles>();
   float [][]pos = new float [numCircles][numCircles];
   color [] colors = new color[numCircles];
   //anything outside of class is global


void setup(){
 background(0);
 noStroke();
  size(1000,1000);
  cb = new circleButton();
  sb = new squareButton();
  tb = new ThirdButton();
  c = new Circles();
  
  for (int i=0; i < numCircles; i++){
    circleFall.add(new Circles()); 
    pos[i][0] = random(-100,height);
    colors[i] = color(0,255,0,random(0,10));
   }
}

void draw(){

if(squareButtonClicked){
  for(Circles c: circleFall){
     tb.buttonDisplay();
     c.checkBoundaries();
     c.move();
     c.display();  
  }
 }
 

cb.display();

}

void mouseClicked(){
 
  cb.circleHit();
  sb.hitDetection();
  tb.buttonHit();

}
