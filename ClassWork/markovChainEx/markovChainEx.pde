/*
at home
at school
at work

          home    school     work      justina's house  <3
HOME:      .3      .3          .2          .2
SCHOOL:    .3      .1          .3          .3
WORK:      .7       0          .15         .15
JUSTINA'S: .1      .2          .3          .4


*/

 String places [] = {"home", "school", "work", "justina"};
 int STATE = 1; // 1 is school
 float [][] movementChance = {
  {.3, .3, .2, .2},
  {.3,.1, .3, .3},
  {.7,0,.15,.15},
  {.1,.2,.3,.4},
};
    //println(movementChance[0][1]);
   
  float rand = random(1);
  float current = 0;
  float [] whereToGoPercent = movementChance[STATE];
for(int i =0; i < whereToGoPercent.length; i++){
    current += whereToGoPercent[i];
    if(rand< current){
    STATE =i;
    break;
  }
}
println(places[STATE]);
