class Enemy extends DynamicEntity implements Damageable {

  private CircleCollisionShape shape = new CircleCollisionShape((Entity) this, 50);
  //private int rad = 250;
  //private float theta = 0;
  
  Enemy() {
    this.speed = 5;
    this.location = new PVector(width/4, height/4);
  }
  
  CollisionShape getShape() {
    return this.shape;
  }
  
  void collideWith(Damageable collidable) {
    Entity other = (Entity) collidable;
    if(other == this) {
      return;
    }
  }

  void render() {
    circle(this.location.x, this.location.y, shape.circleRad/2);
  }

  void update() {
    getMove();
    location.add(this.velocity);
  }

  void getMove() {
    //this.velocity.set(0, 0);
    //location.x = width/2+cos(theta)*rad;
    //location.y = height/2+sin(theta)*rad;
    //theta += TWO_PI/500;
    
  //if (mouseX > 180 && mouseX < 220 && mouseY > 130 && mouseY < 170) {
  //  fill(0);
  //} 
  //else {
  //  fill(255);
  //}
  }
}
