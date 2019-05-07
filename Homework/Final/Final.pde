
float ballX,ballY,ballSpeedY,ballSpeedX, bulletX,bulletY;
float enemX, enemY,obstacleX,obstacleY;
float enemX2, enemY2;

int ballSize,rectSize, diam;

boolean gameStart;
boolean isShot = false;
boolean moveTowards = true;

int gameState = 1;

PImage backImg;
int x,y;
PImage [] newBack;

void setup(){
  
  ballX = 630;
  ballY = 50;
  ballSpeedY = 0;
  ballSpeedX = 0;
  rectSize = 20;
  ballSize = 20;
  
  bulletX = 650;
  bulletY = 50;
  
  enemX = 500;
  enemY = 500;
  
  enemX2 = 400;
  enemY2 = 400;
  
  obstacleX = 630;
  obstacleY = 630;
  
  size(700,700);
  
  backImg = loadImage("Purple.png");
  imageMode(CENTER);
  image(backImg, width/2,height/2);
}

void draw(){
 
  if(gameState ==0){
 //-------------------------------BACKGROUND
 
  image(backImg, x, 0);
  image(backImg, x + backImg.width, 0);
  x -=6; //moves it
  
  if(x <=0){
    x = width + 40;
  }

 //---------------------------------GAME STUFF
  noStroke();
  pongBall();  
  enemy();
  enemy2();
  obstacles();
  hitPlayer();
  ellipseMode(CENTER);
  smooth();
  
 
  fill(0);
  ellipse(bulletX, bulletY,10,10);
 
  fill(0);
  rect(enemX, enemY,rectSize,rectSize);
  
  if(isShot){
    
    bulletX -=20;
    bulletY = ballY;
     if (bulletX <= 0 )
    {
      isShot=false;
    }
  }
  if(isShot == false){
       bulletX = ballX;
       bulletY = ballY;
  }
    
  }else{
    background(213, 89, 120);
    textAlign(CENTER);
    PFont font;
    font = loadFont("GillSansMT-48.vlw");
    textFont(font);
    textSize(40);
    text("mini-game", width/2,height/2);
    text("click to start",width/2,450);
    if(mousePressed ){
      gameState = 0;
    }
    if(gameState ==2 ){
     background(0,255,0);
    textAlign(CENTER);
    PFont font2;
    font2 = loadFont("GillSansMT-48.vlw");
    textFont(font2);
    textSize(40);
    text("game over", width/2,height/2);
    text("click to restart",width/2,450);
     if(mousePressed ){
      gameState = 0;
    }
      
    }
    
  }

  
 }
  
void pongBall(){
  
  fill(255);
  ellipse(ballX,ballY, ballSize,ballSize);
  
 
  if(ballY +(ballSize/2) > height){
  ballY = height-(ballSize/2);
  
  }else if(ballY - (ballSize/2) < 0){
    ballY = height ;
 
  }

}

void enemy(){
  
if(moveTowards == true){
  enemX = enemX +4;
  
}
if(enemX <=650 ){
  moveTowards = true;
}
if(enemX > 650){
  enemY = random(30,670);
  enemX =0;
  moveTowards = true;
}
}

void enemy2(){
   fill(250,148,45);
  rect(enemX2,enemY2, rectSize,rectSize);
  if(moveTowards == true){
  enemX2 = enemX2 + 6;
  
}
if(enemX2 <=700 ){
  moveTowards = true;
}
if(enemX2 > 700){
  enemY2 = random(30,670);
  enemX2 =0;
  moveTowards = true;
}
  
}

void obstacles(){
  fill(45,31,124);
 ellipse(obstacleX, obstacleY, 60,60);
  
  if(moveTowards == true){
  obstacleX = obstacleX +6;
  
}
if(obstacleX <=700 ){
  moveTowards = true;
}
if(obstacleX > 700){
  obstacleY = random(30,670);
  obstacleX =0;
  moveTowards = true;
}
}

void hitPlayer(){
  
  if(ballX < enemX +20 && ballX  > enemX -20 && ballY < enemY +20 && ballY > enemY -20){
    enemX = 0;
    enemY = random(30,670);
        gameState =2;
  }
  float d = dist(ballX,ballY,obstacleX,obstacleY);
    if(d <= 40){
    gameState =2;
  }
   
}

void hitEnemy(){
 
  if(bulletX > enemX && bulletX < enemX  && bulletY < enemY  && bulletY > enemY){
    
    gameState = 2;
  }
}

void keyPressed(){
 
  if(key =='s'){
    ballY +=10;
  }
 
  if(key =='w'){
    ballY -=10;
  }
  if(key == ' '){
    isShot = true;
  }
 }








    
 
 
