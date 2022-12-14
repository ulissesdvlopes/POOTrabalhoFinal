class Wall extends Entity implements Collidable, Solid {

  private RectCollisionShape shape;

  Wall(PVector location, int rectWidth, int rectHeight) {
    this.location = location;
    this.shape = new RectCollisionShape((Entity) this, rectWidth, rectHeight);
  }
  
  CollisionShape getShape() {
    return this.shape;
  }
  
  void collideWith(CollisionShape shape) {
    
  }

  void render() {
    pushStyle();
    noStroke();
    fill(69,19,139);
    rect(this.location.x, this.location.y, shape.rectWidth, shape.rectHeight);
    popStyle();
  }

}
