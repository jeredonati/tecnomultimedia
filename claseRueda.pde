class Rueda {
  float rx, ry, d;
  Rueda() {
  }
  void dibujarRueda(float x, float y, float d) {
    this.rx = x;
    this.ry = y;
    this.d = d;
    push();
    translate(x, y);
    rotate(radians(frameCount*+1));
    fill(200,20,20,50);
    strokeWeight(5);
    circle(2, 20, 50);
    line(d/2, 5, d/2, 5);
    line(0, d/2, 0, -d/2);
    fill(5);
    circle(5, 0, -d/2);
    pop();
  }
}
