interface Collidable {
  void collideWith(Collidable collidable);
  CollisionShape getShape();
}
