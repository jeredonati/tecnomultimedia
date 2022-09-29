/*Video explicativo
Link youtube:
https://youtu.be/WJAqABes9Lw
*/
Principal p;
void setup() {
  size(600, 600);
  p = new Principal();
}
void draw() {
  background(255);
  p.display();
}
void keyPressed() {
  p.mueveBalon(keyCode);
}
