//A   B  C  D  E   F
//.2 .4 .1 .1 .05 .15

  //A: 0 -.2 ---> 20%  of range
  //B: .2 -.6 ---> 40% 
  //C: .6 -.7 ---> 10%
  //D: .7 - .8 ---> 10 %
  //E: .8- .85 ---> 5%
  //F: .85 - 1 ---> 15%

char[] states = {'A', 'B','C','D','E','F'};
float [] range = {.2,.4,.1,.1,.05,.15};  
float rand = random(1); //get random number between 0 and 1

float current = 0;
for( int i = 0; i <range.length; i++){
   //cycle through every range value
  current += range[i];
  
if(rand < current){
  println(states[i]); //set the state
 
 break; //cancel the for loop
} 
}
println(rand);
