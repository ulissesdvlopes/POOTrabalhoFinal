class Player extends DynamicEntity {


  Player() {
    this.speed = 5;
    this.size = 50;
  }

  void render() {
    circle(this.location.x, this.location.y, this.size);
  }

  void update() {
    getInput();
    location.add(this.velocity);
  }

  void getInput() {
    this.velocity.set(0, 0);
    if (keyPressed) {
      //println(Input.inputKey);
      if (Input.pressedKey == 'w') {
        this.velocity.y = -speed;
      }
      if (Input.pressedKey == 's') {
        this.velocity.y = speed;
      }
      if (Input.pressedKey == 'a') {
        this.velocity.x = -speed;
      }
      if (Input.pressedKey == 'd') {
        this.velocity.x = speed;
      }
    } else {
      if (Input.releasedKey == 'w') {
        this.velocity.y = 0;
      }
      if (Input.releasedKey == 's') {
        this.velocity.y = 0;
      }
      if (Input.releasedKey == 'a') {
        this.velocity.x = 0;
      }
      if (Input.releasedKey == 'd') {
        this.velocity.x = 0;
      }
    }
  }
}
