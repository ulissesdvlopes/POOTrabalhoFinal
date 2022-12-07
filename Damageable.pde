interface Damageable {
  void collideWith(Damageable collidable);
  CollisionShape getShape();
}
