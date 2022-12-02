Game game = new Game();

void setup() {
  size(800, 600);
  game.start();
}

void draw() {
  game.loop();
}

void keyPressed() {
  Input.pressedKey = key;
}

void keyReleased() {
  Input.releasedKey = key;
}
