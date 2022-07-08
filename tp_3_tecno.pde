//https://youtu.be/FG9PCnlMv4I
float X, Y;
PImage bolas;
int cantMax =20, tam=25, originTam=25, pantalla = 0;
float[] ax;
float [] ay;

void setup() {
  size(800, 600, P3D);
  ax = new float [8];
  ay = new float [8];
  for (int i =0; i <8; i++) {
    ax[i] =random(originTam/2, width-originTam/2);
    ay[i] = random(-originTam/2, -originTam*10);
    
  }
}
void draw() {
  // personaje
  background(20);
  if (pantalla==0) {
    lights();
    pushMatrix();
    translate(500, height*0.35, -300);
    noFill();
    stroke(255);
    sphere(280);
    popMatrix();
    
    // Titulo de juego
    fill(250, 20, 20);
    textSize( 60);
    textAlign( CENTER, CENTER);
    text( "ºººCatch the ballsººº", 400,200 );
    
    fill(0,0,255);
    textSize(40);
    text("(O presione espacio para continuar O)",400,400);
    
    fill(255);
    textSize(20);
    text("Presiona espacio para pausar y ver las instrucciones",400,500);
    
    
    
    if(keyPressed){
      pantalla = 1;
    }
  }
  //Esfera que se controla//
  if (pantalla == 1) {
    pushMatrix();
    fill(#039577);
    translate(width/2, 0);
    box(150);
    popMatrix();
    pushMatrix();
    stroke(0);
    strokeWeight(5);
    line(X, Y, width/2, 0);
    strokeWeight(1);
    popMatrix();
    pushMatrix();
    X = mouseX;
    Y = height - height/10*3;
    stroke(#9B2411);
    fill(#C42D16);
    translate(X, Y);
    sphere(tam);
    popMatrix();
    //esfera
    for (int i =0; i<8; i++) {
      ay[i]+= 20;
    }
    for (int i =0; i<8; i++) {
      pushMatrix();
      fill(#039577);
      translate(ax[i], ay[i]);
      sphere(originTam);
      popMatrix();
    }
    for (int i =0; i<8; i++) {
      if (ay[i] >= height +originTam) {
        ax[i] =random(originTam/2, width-originTam/2);
        ay[i] = random(-5000, -1000);
      }
      if (dist(ax[i], ay[i], X, Y) <=tam/2+originTam/2) {
        ax[i] =random(originTam/2, width-originTam/2);
        ay[i] = random(-5000, -1000);
        tam += 5;
      }
    }
    if (tam>=100) pantalla = 2;
  } else if (pantalla == 2) {
    //pantalla final
    background(200, 200, 200);
    fill(0,255,0);
    textSize(70);
    text( "o¡FELICIDADES!o", width/2, height/2 );
    
    //Creditos//
    if(mousePressed){
      pantalla = 3;
    }
  }
  if(pantalla == 2);
  else if(keyPressed){
      background(20, 20, 20);{
        textSize(70);
      text( "Pausa", 400,100 );
      
      fill(255);
      textSize(50);
      text("Instrucciones",200,200);
      
      fill(255,0,125);
      textSize(38);
      text("Usar el raton de derecha a izquierda",350,300);
      
      textSize(38);
      text("para asi obtener mas bolitas",400,400);
      
      textSize(38);
      text("atrapa todas hasta ganar.",500,500);
      }
}
if(pantalla == 3){
      lights();
    pushMatrix();
    translate(500, height*0.35, -300);
    noFill();
    stroke(255);
    sphere(280);
    popMatrix();
    
  fill(255,255,0);
  textSize(70);
  text("Creditos",400,100);
  
  fill(255,125,0);
  textSize(50);
  text("Personas involucradas:",300,200);
  
  fill(0,0,255);
  textSize(38);
  text("O Jeremias Donati", 300,300);
  
  textSize(38);
  text("O Jostyn Padilla", 300,400);
  
  textSize(38);
  text("O Jeremy Pacheco", 300,500);
  
  }
}
