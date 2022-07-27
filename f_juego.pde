void jugar() {
  //Esfera 
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
  
  //velocidad del juego
  for (int i =0; i<8; i++) {
    ay[i]+= 10;
    cubo_y[i]+= 10;
  }
  
 //Objtos Esferas y Cubos
  for (int i =0; i<8; i++) {
    pushMatrix();
    fill(#039577);
    translate(ax[i], ay[i]);
    sphere(originTam);
    popMatrix();
    
    pushMatrix();
    fill(255,125,0);
    translate(cubo_x[i], cubo_y[i]);
    box(originTam);
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
    if (cubo_y[i] >= height +originTam) {
      cubo_x[i] =random(originTam/2, width-originTam/2);
      cubo_y[i] = random(-50, -1000);
    }
    if (dist(cubo_x[i], cubo_y[i], X, Y) <=tam/2+originTam/2) {
      cubo_x[i] =random(originTam/2, width-originTam/2);
      cubo_y[i] = random(-50, -1000);
      tam -= 5;
    }
    
  }
  //ganaste
  if (tam>=100) {
    pantalla = 2;
  }
  //perdiste
  if (tam<=0){
    pantalla = 4;
     }
}
