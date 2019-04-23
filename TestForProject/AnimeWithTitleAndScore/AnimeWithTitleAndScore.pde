import processing.sound.*;

SoundFile file;

int numBounce = 10;

Ball [] balls;

Table animeList;

PImage face1;
void setup() {
  size(1000, 1000);
  face1 = loadImage("face2.png");
  noStroke();
  loadData();


  file = new SoundFile(this, "cowboy.mp3");

  file.play();

}





void draw() {
background(255,176,34);

  for (int i = 0; i < 100; i++) {

    balls[i].display();

    balls[i].rollover(mouseX, mouseY);

    balls[i].move();

    balls[i].checkBoundaries();

  }



  textAlign(LEFT);

  fill(0);
 

}



void loadData() {

  animeList = loadTable("AnimeList.csv", "header");

  balls = new Ball[animeList.getRowCount()];



  for (int i=0; i < animeList.getRowCount(); i++) {

    TableRow row = animeList.getRow(i);

    float score = row.getFloat("score");
    

    String n = row.getString("title");

    balls[i] = new Ball((score-5)*25, n, score);

  }
 
}
