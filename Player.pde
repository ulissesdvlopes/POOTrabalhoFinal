class Player extends DynamicEntity implements Collidable {

  private RectCollisionShape shape;
  private int HP = 100;

  Player() {
    this.speed = 5;
    this.location = new PVector(width/2, height/2);
    this.shape = new RectCollisionShape(this, 50, 50);
  }
  
  RectCollisionShape getShape() {
    return this.shape;
  }
  
  int getHP() {
    return this.HP;
  }
  
  void gotHurt() {
    if(this.HP <= 0) {
      this.HP = 100;
      return;
    }
    println("OUUUCHHH");
    this.HP -= 1;
  }
  
  void collideWith(CollisionShape shape) {
    if(shape.collidable == this) {
      return;
    }
    if(this.shape.hasCollided(shape)) {
      if(shape.collidable instanceof Solid) {
        location.sub(this.velocity);
      }
      if(shape.collidable instanceof Damageable) {
        gotHurt();
      }
    }
  }

  void render() {
    rect(this.location.x, this.location.y, shape.rectWidth, shape.rectHeight);
  }

  void update() {
    getInput();
    location.add(this.velocity);
    //println(this.location);
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
