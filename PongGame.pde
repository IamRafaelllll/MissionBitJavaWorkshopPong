Puck puck;
Paddle left;
Paddle right;

int leftscore = 0;
int rightscore = 0;

void setup() {
  size(600, 400);
  puck = new Puck();
  left = new Paddle(true);
  right = new Paddle(false);
}

void draw() {
  background(0);


  puck.checkPaddleRight(right);
  puck.checkPaddleLeft(left);

  left.show();
  right.show();
  left.update();
  right.update();

  puck.update();
  puck.edges();
  puck.show();

  fill(255);
  textSize(32);
  text(leftscore, 32, 40);
  text(rightscore, width-64, 40);
}

void keyReleased() {
  left.move(0);
  right.move(0);
}

void keyPressed() {
  if (key == 'a') {
    left.move(-10);
  } else if (key == 'z') {
    left.move(10);
  }

  if (key == 'o') {
    right.move(-10);
  } else if (key == 'l') {
    right.move(10);
  }
}
