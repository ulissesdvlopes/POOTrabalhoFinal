class CircleCollisionShape extends CollisionShape {

   private int circleRad;
   CircleCollisionShape(Entity e, int circleRad) {
     super((Collidable)e, e.location);
     this.circleRad = circleRad;
   }
   

}
