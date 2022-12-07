class CircleCollisionShape extends CollisionShape {

   private int circleRad;
   CircleCollisionShape(Entity e, int circleRad) {
     super(e);
     this.circleRad = circleRad;
   }
   

}
