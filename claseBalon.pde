class Balon {
  float ax, ay;
  int ancho, alto;
  Rueda r;
  Balon(float ax, float ay, int ancho, int alto ) {
    this.ax = ax;
    this.ay = ay;
    this.ancho = ancho;
    this.alto = alto;
    r = new Rueda();
  }
  void dibujarBalon() {
    fill(255, 255, 0);
    //triangle(ax, ay, ax+ancho, ay, ax+ancho/2, ay-alto/2);
    fill(230, 230, 200);
    strokeWeight(4);
    circle( ay, ancho, alto);
    r.dibujarRueda(ax, ay+alto, alto );
    r.dibujarRueda(ax+ancho, ay+alto, alto);
  }
  void moverBalon(int tecla) {
    if (tecla==UP) {
      ay -= 5;
      //ay = ay -30;
    }
    if (tecla == DOWN) {
      ay += 10;
    }
  }
}
