Character c;

void setup(){
  size(1000,1000);
  c = new Character();
  imageMode(CENTER);
  
} 

void draw(){
  background(0);
  c.displayCharacter();
  c.update();
  
}
