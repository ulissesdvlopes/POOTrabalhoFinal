abstract class CollisionShape {
  protected Entity entity;
  CollisionShape(Entity e) {
    entity = e;
    if(e instanceof Collidable) {
      World.collidables.add((Collidable) e);
    }
  }
}
