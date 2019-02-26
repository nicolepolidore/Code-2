//when I press a key, change the background for 3 seconds, then change it back

float startTime, endTime;

float totalTime = 3;

color normalColor, activeColor;

boolean isActive = false;

void setup() {

  size(600, 300);

  normalColor = color(230, 10, 30);

  activeColor = color(130, 100, 230);

  totalTime *= 1000; // switch to milliseconds

}

void draw() {

  if (isActive) {

    background(activeColor);

    //switchBackEndTime();

    switchBackStartTime();

  } else {

    background(normalColor);

  }

}

void keyTyped() {

  println(millis());

  isActive = true; //when is Active true, changing normalColor to activeColor

  // Timing variables below

  startTime = millis();
  //milis() is always updating, so you use startTime in order for you to get a number(milis()) at that specific key press
  //stores the time when you press the key
  
  endTime = millis() + totalTime;

}

void switchBackEndTime() {

  if (millis() > endTime) {
    isActive = false;

  }

}

void switchBackStartTime() {

  if (millis() - startTime > totalTime) { 
    //this shows since when key pressed
    isActive = false;

  }
  //if(milis() > totalTime + startTime){
    //isActive = false;
  //}

}
