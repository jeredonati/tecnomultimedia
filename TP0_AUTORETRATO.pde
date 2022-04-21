//autoretrato
void setup() {
 size (400, 400);
 background (88, 49, 122);
   textSize(22);
}
void draw(){
  //pies
 fill(0,222,222);
 textSize(500);
 text("x",95,380);
 //cuerpo
 fill(0,222,222);
 strokeWeight(4);
 stroke(255,50);
 triangle(200,300,140,130,320,130);
 //cabeza
 rect(160,15,110,140,30,22,10,2);
 //OJO
 fill(250,20,250);
 ellipse(180,50,40,10);
 fill(255);
 triangle(180,55,175,45,185,45);
 //ojos2
 fill(250,20,250);
 ellipse(240,50,40,10);
 fill(255);
 triangle(240,55,235,45,245,45);
//OREJA
fill(0,222,222);
 triangle(280,65,280,45,265,45);
 fill(250,20,250);
 triangle(280,85,280,70,275,50);
 //NARIZ
textSize(55);
 text("J.", 190, 85);
 //boca
 bezier(200, 100, 350, 200, 22, 22, 200,150);
 //nombre
 textSize(45);
 text("DonA", 160, 190);
 
 
}
