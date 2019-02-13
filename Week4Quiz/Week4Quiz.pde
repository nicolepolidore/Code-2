CircleButton cb;

 float circX= 500;
   float circY = 500;
   float circWidth = 60;
   float circHeight = 60;
   int size;
   boolean CircleButtonClicked = false;
   float d = dist(circX, circY, mouseX, mouseY);
   color currentColor;
   float colorOne;
   float colorTwo;
   float colorThree;
   int numButtons = 25;
   float [] x = new float [numButtons];
   float [] y = new float [numButtons];
   
   
 void setup(){
   background(0);
   noStroke();
   size(800,800);
    cb = new CircleButton();
    currentColor = color(255);
    colorOne = random(0,255);
    colorTwo = random(0,255);
    colorThree = random(0,255);
  
   for (int i = 0; i < numButtons; i++) {

    x[i] = 100 + (i % int(sqrt(numButtons))) * 150;

    y[i] = 100 + (i / int(sqrt(numButtons))) * 150;

  }

  
  }
   
 void draw (){
  
  cb.display();
  strokeWeight(40);
  stroke(colorOne,colorTwo,colorThree);
  
  //for(int i = 0; i < numButtons; i ++){
  //  cb.display();
  //strokeWeight(200);
  //stroke(colorOne,colorTwo,colorThree);
    
  //}
 
 }
 
 void mousePressed(){
  
 if(d<circWidth){
    
     CircleButtonClicked = false;
 }else{
   CircleButtonClicked = true;
   colorOne = random(0,255);
 
    
    
        
 
 }
 }
 
 
