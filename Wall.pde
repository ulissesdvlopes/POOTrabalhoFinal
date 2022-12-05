class Wall extends Entity implements Collidable, Solid {

  private RectCollisionShape shape;

  Wall(PVector location, int rectWidth, int rectHeight) {
    this.shape = new RectCollisionShape((Entity) this, rectWidth, rectHeight);
    this.location = location;
  }
  
  CollisionShape getShape() {
    return this.shape;
  }
  
  void collideWith(Collidable collidable) {
    
  }

  void render() {
    pushStyle();
    noStroke();
    fill(139,69,19);
    rect(this.location.x, this.location.y, shape.rectWidth, shape.rectHeight);
    popStyle();
  }

}
