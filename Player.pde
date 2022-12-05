class Player extends DynamicEntity implements Collidable {

  private RectCollisionShape shape = new RectCollisionShape((Entity) this, 50, 50);

  Player() {
    this.speed = 5;
    this.location = new PVector(width/2, height/2);
    //this.shape = new RectCollisionShape((Entity) this, 50, 50);
    //this.size = 50;
  }
  
  CollisionShape getShape() {
    return this.shape;
  }
  
  void collideWith(Collidable collidable) {
    Entity other = (Entity) collidable;
    if(other == this) {
      return;
    }
    if(this.shape.hasCollided(other, collidable.getShape())) {
      if(other instanceof Solid) {
        location.sub(this.velocity);
      }
    }
  }

  void render() {
    //circle(this.location.x, this.location.y, this.size);
    rect(this.location.x, this.location.y, shape.rectWidth, shape.rectHeight);
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
