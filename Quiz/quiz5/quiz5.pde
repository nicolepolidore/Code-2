squareButton sb;

boolean squareButtonClicked = false;
color fill;


  

void setup(){
  size(600,600);
  background(255);
  sb = new squareButton(); 
}

void draw(){

 sb.buttonOneDisplay();
 sb.buttonTwoDisplay();
 sb.buttonThreeDisplay();
 sb.buttonFourDisplay();
}


void mouseClicked(){
   
  sb.hitButtonOne();
  sb.newStartTime();
  
}
