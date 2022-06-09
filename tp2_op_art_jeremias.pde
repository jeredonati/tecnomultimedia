/* Jeremias Donati
https://youtu.be/c_N78FLWWwI*/
void setup() {
  size(700, 700);
  background(255);
  noSmooth();
  strokeWeight(2*2);
}
 void draw() {
   //blendMode(REPLACE);
   for (int  j = 0; j<width*2; j=j+10)   {
     line(j,10,0,j);
     if(mousePressed){
      blendMode(DIFFERENCE);
   }else{
      blendMode(REPLACE);
   }
   }
 }
 //////////////////////////
 
