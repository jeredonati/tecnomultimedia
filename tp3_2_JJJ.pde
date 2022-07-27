//https://youtu.be/FG9PCnlMv4I
float X, Y;
PImage bolas;
int cantMax =20, tam=25, originTam=25, pantalla = 0;
float[] ax;
float [] ay;
float[] cubo_x;
float[] cubo_y;
void setup() {
  size(800, 600, P3D);
  /*
  ax = new float [8];
  ay = new float [8];
  for (int i =0; i <8; i++) {
    ax[i] =random(originTam/2, width-originTam/2);
    ay[i] = random(-originTam/2, -originTam*10);
  }
  */
}
void draw() {
  // personaje
  background(20);
  if (pantalla==0) {
    pantallaInicio();
    if (keyPressed) {
      pantalla = 1;
      tam=25;
      ax = new float [8];
      ay = new float [8];
      cubo_x = new float [8];
      cubo_y = new float [8];
      
      for (int i =0; i <8; i++) {
        ax[i] =random(originTam/2, width-originTam/2);
        ay[i] = random(-originTam/2, -originTam*10);
        
        cubo_x[i] =random(originTam/2, width-originTam/2);
        cubo_y[i] = random(-originTam/2, -originTam*10);
      }
    }

    //Esfera que se controla//
  } else if (pantalla == 1) {
    jugar();
  } else if (pantalla == 2) {
    //pantalla final
    background(200, 200, 200);
    fill(0, 255, 0);
    textSize(70);
    text( "o¡FELICIDADES!o", width/2, height/2 );

    //Creditos//
    if (mousePressed) {
      pantalla = 3;
    }
  }
  if (pantalla == 2) {
  } else if (keyPressed) {
    background(20, 20, 20);
    {
      textSize(70);
      text( "Pausa", 400, 100 );

      fill(255);
      textSize(50);
      text("Instrucciones", 200, 200);

      fill(255, 0, 125);
      textSize(38);
      text("Usar el raton de derecha a izquierda", 350, 300);

      textSize(38);
      text("para asi obtener mas bolitas", 400, 400);

      textSize(38);
      text("atrapa todas hasta ganar.", 500, 500);
    }
  }
  if (pantalla == 3) {
    pantallaTres();
  }
  if (pantalla == 4) {
    pantallaCuatro();
    }
}
