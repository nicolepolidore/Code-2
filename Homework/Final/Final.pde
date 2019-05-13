import processing.sound.*;

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
int score = 0;

PImage player;
PImage  enemy;
PImage coin;
PImage obstacle;

float time =  100;
float max_time = 100;
float rectWidth = 70;

SoundFile song;
void setup(){
  
  song = new SoundFile(this, "General Morello.mp3");
  song.play();
  song.loop();
  ballX = 630;
  ballY = 50;
  ballSpeedY = 0;
  ballSpeedX = 0;
  rectSize = 120;
  ballSize = 100;
  
  bulletX = 650;
  bulletY = 50;
  
  enemX = 500;
  enemY = 500;
  
  enemX2 = 400;
  enemY2 = 400;
  
  obstacleX = 630;
  obstacleY = 630;
  
  
  size(700,700);
  
  player = loadImage("code Character.png");
  backImg = loadImage("Purple.png");
  enemy = loadImage("enemyCode.png");
  coin = loadImage("Retro-Coin-icon.png");
  obstacle = loadImage("ObstacleCode.png");
  
  imageMode(CENTER);
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
 PFont scoreF;
 fill(255);
    scoreF = loadFont("GillSansMT-48.vlw");
    textFont(scoreF);
    textSize(40);
 
  text("score:" + " " + score, 100, 40);
 //---------------------------------GAME STUFF
  noStroke();
  pongBall();  
  enemy();
  enemy2();
  obstacles();
  hitPlayer();
  hitEnemy();
  ellipseMode(CENTER);
  smooth();
  
 
  fill(0);
  ellipse(bulletX, bulletY,10,10);
   enemy = loadImage("enemyCode.png");
image(enemy, enemX,enemY,rectSize,rectSize);

  
  //-------------------------------------TIMER
  

  
  if(time < 25){
    fill(255,0,0);
  }else if(time < 50){
   fill(255,200,0); 
  }else{
    fill(0,255,0);
  }
  
  noStroke();
  float drawWidth = (time/ max_time) * rectWidth;
  rect(500,10,drawWidth,30);
  stroke(0);
  noFill();
  rect(500,10,rectWidth,30);
  
  fill(255);
  
  PFont timerFont;
 fill(255);
    timerFont = loadFont("GillSansMT-48.vlw");
    textFont(timerFont);
    textSize(40);
 
  text("time:",450, 40);

//------------------------------------------
    
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
//----------------------------------------------------GAME OVER SCREEN
    if(gameState ==2 ){
     background(83,162, 175);
     fill(0);
    textAlign(CENTER);
    PFont font2;
    font2 = loadFont("GillSansMT-48.vlw");
    textFont(font2);
    textSize(40);
    text("game over", width/2,height/2);
    text("click to restart",width/2,450);
     if(mousePressed ){
    
      gameState = 0;
      if(gameState == 0){

      score = 0;
      ballX = 20;
      ballY = 20;
      }
        
    }
      
    }
    
  }

 }
  
void pongBall(){
  imageMode(CENTER);
  image(player,ballX,ballY,100,100);
  //fill(255);
  //ellipse(ballX,ballY, ballSize,ballSize);
  
 
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
    enemy = loadImage("enemyCode.png");
image(enemy, enemX2,enemY2,rectSize*2,rectSize*2);
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
    obstacle = loadImage("ObstacleCode.png");
    image(obstacle, obstacleX,obstacleY,120,120);

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
      time -= .1;

  
   if(ballX < enemX +20 && ballX  > enemX -20 && ballY < enemY +20 && ballY > enemY -20){
    enemX = 0;
    enemY = random(30,670);
    score = 0;
    ballX = 630;
    ballY = 50;
    time = max_time;

      gameState =2;
   }
    
    if(time <= 0){
    gameState = 2;
    time = max_time;
    enemX = 0;
    enemY = random(30,670);
    score = 0;
    ballX = 630;
    ballY = 50;
      }
      
   if(ballX < enemX2 +20 && ballX  > enemX2 -20 && ballY < enemY2 +20 && ballY > enemY2 -20){
    enemX = 0;
    enemY = random(30,670);
    score = 0;
    ballX = 630;
    ballY = 50;
        time = max_time;

      gameState =2;
   }
  
  float d = dist(ballX,ballY,obstacleX,obstacleY);
    if(d <= 40){
    gameState =2;
      time = max_time;
      score = 0;
    ballX = 630;
    ballY = 50;
  }
   
}

void hitEnemy(){
 
    if(bulletX < enemX +20 && bulletX  > enemX -20 && bulletY < enemY +20 && bulletY > enemY -20){
    background(255,0,0,0);
    enemX = 0;
    enemY = random(30,670);
    score ++;
      
  }
  
   if(bulletX < enemX2 +20 && bulletX  > enemX2 -20 && bulletY < enemY2 +20 && bulletY > enemY2 -20){
    background(255,0,0,0);
    enemX2 = 0;
    enemY2 = random(30,670);
    score +=3;
      
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








    
 
 
