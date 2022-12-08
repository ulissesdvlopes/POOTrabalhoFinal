abstract class CollisionShape {
  protected Collidable collidable;
  protected PVector location;
  CollisionShape(Collidable e, PVector location) {
    this.location = location;
    collidable = e;
    World.collidables.add(this);
  }
}
