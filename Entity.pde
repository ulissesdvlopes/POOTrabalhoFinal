abstract class Entity {
  
  //private CollisionShape shape;
  
  Entity() {
    World.entities.add(this);
  }
  
  abstract void render();
  protected PVector location = new PVector();
  
  //CollisionShape getShape() {
  //  return this.shape;
  //}
  
}
