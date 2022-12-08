class Trap extends Entity implements Damageable, Collidable, Solid {

  private RectCollisionShape shape;
  
  Trap(PVector location) {
    this.location = location;
    this.shape = new RectCollisionShape(this, 25, 50);
  }
  
  RectCollisionShape getShape() {
    return this.shape;
  }
  
  void collideWith(CollisionShape shape) {
    if(shape.collidable == this) {
      return;
    }
  }

  void render() {
    pushStyle();
    fill(200,200,200);
    noStroke();
    rect(this.location.x, this.location.y, shape.rectWidth, shape.rectHeight);
    popStyle();
  }

}
