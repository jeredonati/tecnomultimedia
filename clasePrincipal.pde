class Principal {
  Fondo fondito;
  Balon a;
  Principal() {
    fondito = new Fondo();
    a = new Balon(420, 400, 300, 40);
  }
  void display() {
    //fondito.dibujarFondo(3); // enviamos por parámetro que fondo mostrar
    fondito.dibujarFondo();
    a.dibujarBalon();
  }
  void mueveBalon(int presionada) {
    a.moverBalon(presionada);
    /*if (presionada==DOWN) {
      a.ay += 30; // CON EL . ACCEDO A LA PROPIEDAD ay
    }*/
  }
}
