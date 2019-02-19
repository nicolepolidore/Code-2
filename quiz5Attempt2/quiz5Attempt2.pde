float totalTime = 3;
color activeColor1,activeColor2,activeColor3;
color normalColor1,normalColor2,normalColor3;
boolean isActive1, isActive2, isActive3 = false;
float endTime;


void setup(){
  
  size(1000,1000);
  background(255);
  totalTime *= 1000;
  activeColor1 = color(174,90,234);
  activeColor2 = color(174,90,234);
  activeColor3 = color(174,90,234);
  normalColor1 = color(90,154,234);
  normalColor2 = color(234,90,211);
  normalColor3 = color(234,234,90);
  
  
}

void draw(){
  background(255);
  buttonOne();
  buttonTwo();
  buttonThree();
 fill(0);
  text("a",250,300);
  textAlign(CENTER);
  textSize(60);
  
   text("s",250,550);
  textAlign(CENTER);
  textSize(60);
  
   text("d",600,700);
  textAlign(CENTER);
  textSize(60);
  
}

void buttonOne(){
  
  if(isActive1){
    fill(activeColor1);
    switchBackEndTime();
  }else{
    fill(normalColor1);
  }
  rect(200,200,150,200);
  
}

void buttonTwo(){
  if(isActive2){
    fill(activeColor2);
    switchBackEndTime();
  }else{
    fill(normalColor2);
  }
  rect(200,500, 100,100);
  
}

void buttonThree(){
  if(isActive3){
    fill(activeColor3);
    switchBackEndTime();
  }else{
    fill(normalColor3);
  }
  rect(500,600,300,200);
}



void switchBackEndTime(){
  if(millis() > endTime){
   isActive1 = false; 
   isActive2 = false; 
   isActive3 = false; 
  }
}

void mouseClicked(){
  
  if(mouseX > 200 && mouseX < 200 + 150 && mouseY > 200 && mouseY < 200 +200){
    isActive1 = true;
    buttonOne();
    endTime = millis() + totalTime;
  }
   if(mouseX > 200 && mouseX < 200 + 100 && mouseY >500 && mouseY < 500 + 100){
     isActive2 = true;
     buttonTwo();
    endTime = millis() + totalTime;
  }
  if(mouseX > 500 && mouseX < 500 + 300 && mouseY > 600 && mouseY < 600 + 200){
     isActive3 = true;
     buttonThree();
    endTime = millis() + totalTime;
      
}
  }
