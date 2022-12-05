class Game {

  void start(){
    DynamicEntity player = new Player();
    Entity wall1 = new Wall(new PVector(0,0), 5, height);
    Entity wall2 = new Wall(new PVector(width - 5,0), 5, height);
    Entity wall3 = new Wall(new PVector(0,0), width, 5);
    Entity wall4 = new Wall(new PVector(0,height-5), width, 5);
  }
  
  void loop(){
    background(250);
    for (int i = 0; i < World.entities.size(); i++) {
      World.entities.get(i).render();
    }
    for (int i = 0; i < World.collidables.size(); i++) {
      for (int j = 0; j < World.collidables.size(); j++) {
        World.collidables.get(i).collideWith(World.collidables.get(j));
      }
    }
    for (int i = 0; i < World.dynamics.size(); i++) {
      World.dynamics.get(i).update();
    }
  }
}
