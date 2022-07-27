void pantallaInicio(){
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
    text( "ºººCatch the ballsººº", 400, 200 );

    fill(0, 0, 255);
    textSize(40);
    text("(O presione espacio para continuar O)", 400, 400);

    fill(255);
    textSize(20);
    text("Presiona espacio para pausar y ver las instrucciones", 400, 500);

 
}

void pantallaTres() {
  lights();
  pushMatrix();
  translate(500, height*0.35, -300);
  noFill();
  stroke(255);
  sphere(280);
  popMatrix();

  fill(255, 255, 0);
  textSize(70);
  text("Creditos", 400, 100);

  fill(255, 125, 0);
  textSize(50);
  text("Personas involucradas:", 300, 200);

  fill(0, 0, 255);
  textSize(38);
  text("O Jeremias Donati", 300, 300);

  textSize(38);
  text("O Jostyn Padilla", 300, 400);

  textSize(38);
  text("O Jeremy Pacheco", 300, 500);
}
void pantallaCuatro(){
  fill(255,255,0);
  textSize(100);
  text(">Game Over<",400,300);
}
  
