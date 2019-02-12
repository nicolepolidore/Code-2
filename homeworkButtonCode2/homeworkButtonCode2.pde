circleButton cb;
squareButton sb;
Circles c;

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
  
   int numCircles = 30;
   ArrayList<Circles> circleFall = new ArrayList<Circles>();
   float [][]pos = new float [numCircles][numCircles];
   color [] colors = new color[numCircles];


void setup(){
 background(0);
 noStroke();
  size(1000,1000);
  cb = new circleButton();
  sb = new squareButton();
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
     c.checkBoundaries();
     c.move();
     c.display();
     
  }
 }

cb.display();
sb.hitDetection();
}

void mouseClicked(){
  
 if(d<circWidth){
     circleButtonClicked = false;
 }else{
     circleButtonClicked = true;
     fill(200,100,100);
     sb.displaySquare();
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
           // cb2.displaycButton();
          }    
      }
}
