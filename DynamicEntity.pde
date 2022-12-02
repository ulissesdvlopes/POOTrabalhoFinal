abstract class DynamicEntity extends Entity {
  
  DynamicEntity() {
    World.dynamics.add(this);
  }

  abstract void update();
  protected PVector velocity =  new PVector(0,0);
  protected int speed;
  
}
