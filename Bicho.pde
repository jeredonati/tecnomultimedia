class bird {
  float xPos, yPos, ySpeed;
  bird() {
    xPos = 250;
    yPos = 400;
  }
  void drawBird() {
    stroke(255);
    fill(250,20,20);
    strokeWeight(5);
    ellipse(xPos, yPos, 40, 30);
  }
  void jump() {
    ySpeed=-7;
  }
  void drag() {
    ySpeed+=0.4;
  }
  void move() {
    yPos+=ySpeed;
    for (int i = 0; i<3; i++) {
      p[i].xPos-=3;
    }
  }
  void checkCollisions() {
    if (yPos>800) {
      end=false;
    }
    for (int i = 0; i<3; i++) {
      if ((xPos<p[i].xPos+10&&xPos>p[i].xPos-10)&&(yPos<p[i].opening-100||yPos>p[i].opening+100)) {
        end=false;
      }
    }
  }
}
