class Game {

  void start(){
    Player player = new Player();
    DynamicEntity enemy  = new Enemy();
    Entity trap =  new Trap(new PVector(width - 100, height/2));
    Entity wall1 = new Wall(new PVector(0,0), 5, height);
    Entity wall2 = new Wall(new PVector(width - 5,0), 5, height);
    Entity wall3 = new Wall(new PVector(0,0), width, 5);
    Entity wall4 = new Wall(new PVector(0,height-5), width, 5);
    Entity HUD = new HUD(player);
  }
  
  void loop(){
    background(250);
    for (int i = 0; i < World.entities.size(); i++) {
      World.entities.get(i).render();
    }
    for (int i = 0; i < World.collidables.size(); i++) {
      for (int j = 0; j < World.collidables.size(); j++) {
        World.collidables.get(i).collidable.collideWith(World.collidables.get(j));
      }
    }
    for (int i = 0; i < World.dynamics.size(); i++) {
      World.dynamics.get(i).update();
    }
  }
}
