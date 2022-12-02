class Game {
  
  DynamicEntity player = new Player();

  void start(){
  }
  
  void loop(){
    background(250);
    for (int i = 0; i < World.entities.size(); i++) {
      World.entities.get(i).render();
    }
    for (int i = 0; i < World.dynamics.size(); i++) {
      World.dynamics.get(i).update();
    }
  }
}
