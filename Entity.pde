abstract class Entity {
  
  Entity() {
    World.entities.add(this);
  }
  
  abstract void render();
  protected PVector location = new PVector();
  protected int size;
  
}
