class Enemy extends DynamicEntity implements Damageable, Collidable {

  private CircleCollisionShape shape;
  
  Enemy() {
    this.speed = 3;
    this.location = new PVector(width/4, height/4);
    this.shape = new CircleCollisionShape(this, 25);
  }
  
  CircleCollisionShape getShape() {
    return this.shape;
  }
  
  void collideWith(CollisionShape shape) {
    if(shape.collidable == this) {
      return;
    }
  }

  void render() {
    pushStyle();
    fill(139,19,40);
    noStroke();
    circle(this.location.x + shape.circleRad, this.location.y + shape.circleRad, shape.circleRad*2);
    popStyle();
    //rect(this.location.x, this.location.y, shape.circleRad*2, shape.circleRad*2);
  }

  void update() {
    getMove();
    location.add(this.velocity);
  }

  void getMove() {
    if(location.x <= 50) {
      velocity.set(speed,0);
      return;
    }
    if(location.x >= 200) {
      velocity.set(-speed,0);
      return;
    } 
    
  
  }
}
