circleButton cb;
squareButton sb;
cButton2 cb2;
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
  
   float cButtonX= 700;
   float cButtonY = 500;
   float cButtonWidth = 100;
   float cButtonHeight = 100;
  
   boolean cButtonClicked = false;
   float d2 = dist(cButtonX, cButtonY, mouseX, mouseY);
   
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
  cb2 = new cButton2();
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
//for(Circles c: circleFall){
//     c.checkBoundaries();
//     c.move();
//     c.display();
     
//    }


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
           cb2.displaycButton();
          }
          
          
      }
}
