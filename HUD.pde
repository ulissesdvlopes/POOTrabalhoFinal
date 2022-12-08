class HUD extends Entity{
  
  private Player player;
  
  HUD(Player p) {
    player = p;
  }

  void render() {
    rect(width - 120, height - 40, 100, 20);
    pushStyle();
    noStroke();
    fill(255,0,0);
    rect(width - 120, height - 40, player.getHP(), 20);
    popStyle();
  }
}
