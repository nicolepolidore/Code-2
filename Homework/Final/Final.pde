
float ballX,ballY,ballSpeedY,ballSpeedX, bulletX,bulletY;

int ballWidth,ballHeight,rectSize, diam;

boolean gameStart;
boolean isShot = false;
Enemy enemy;

void setup(){
  
  ballX = 20;
  ballY = 20;
  ballSpeedY = 0;
  ballSpeedX = 0;
  rectSize = 120;
  ballWidth = 20;
  ballHeight = 20;
  
  bulletX = 20;
  bulletY = 20;
  size(600,600);
  
  enemy = new Enemy();
  

}

void draw(){
 
  background(213, 89, 120);
  noStroke();
  pongBall();  
  ellipseMode(CENTER);
  smooth();
 // enemy.display();
 // enemy.update();
 
  fill(255);
  ellipse(bulletX, bulletY,10,10);
  if(isShot){
    bulletX +=20;
    bulletY = ballY;
     if (bulletX >= width )
    {
      isShot=false;
    }
  }
  if(isShot == false){
       bulletX = ballX;
       bulletY = ballY;
  }
  
 }
  
void pongBall(){
  
  fill(255);
  ellipse(ballX,ballY, ballWidth,ballHeight);
  
 
  if(ballY +(ballHeight/2) > height){
  ballY = height-(ballHeight/2);
  
  }else if(ballY - (ballHeight/2) < 0){
    ballY = height ;
 
  }
  
}

void keyPressed(){
 
  if(key =='s'){
    ballY +=10;
  }
 
  if(key =='w'){
    ballY -=10;
  }
 }

void mousePressed(){
 
  isShot = true;
 
}




    
 
 
