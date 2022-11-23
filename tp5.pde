/*Link de Youtube: 
https://youtu.be/e7bhhiCoatg*/
import processing.sound.*;
SoundFile music;


bird b = new bird();
pillar[] p = new pillar[3];
boolean end=false;
boolean intro=true;
int score=0;
void setup() {
  music = new SoundFile(this, "musiquita.mp3");
 // music.loop();
  //repeating
  size(500, 800);
  for (int i = 0; i<3; i++) {
    p[i]=new pillar(i);
  }
}
void draw() {
  background(20,30,80);
  if (end) {
    b.move();
  }
  b.drawBird();
  if (end) {
    b.drag();
  }
  b.checkCollisions();
  for (int i = 0; i<3; i++) {
    p[i].drawPillar();
    p[i].checkPosition();
  }
  fill(250, 30, 30);
  stroke(25);
  textSize(25);
  if (end) {
    rect(10, 10, 50, 50);
    fill(0);
    text(score, 20, 38);
  } else {
    rect(100, 100, 300, 50);
    rect(150, 200, 300, 50);
    fill(255);
    if (intro) {
      text("Bicho loco", 155, 140);
      text("presiona cualquier boton para jugar", 155, 240);
    } else {
      text("has perdido", 170, 140);
      text("puntaje", 180, 240);
      text(score, 280, 240);
    }
  }
}
void reset() {
  end=true;
  score=0;
  b.yPos=400;
  for (int i = 0; i<3; i++) {
    p[i].xPos+=550;
    p[i].cashed = false;
  }
}
void mousePressed() {
  b.jump();
  intro=false;
  if (end==false) {
    reset();
  }
}
void keyPressed() {
  b.jump();
  intro=false;
  if (end==false) {
    reset();
  }
}
