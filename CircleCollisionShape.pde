class CircleCollisionShape extends CollisionShape {

   private int circleRad;
   CircleCollisionShape(Entity e, int circleRad) {
     super((Collidable)e, e.location);
     this.circleRad = circleRad;
   }
   
   boolean hasCollided(CollisionShape otherShape) {
     if(otherShape instanceof CircleCollisionShape) {
       return hasCollided((CircleCollisionShape) otherShape);
     }
     return false;
  }
   
   boolean hasCollided(CircleCollisionShape other) {
     
    float x = abs(other.location.x - location.x);
    float y = abs(other.location.y - location.y);

    if (dist(other.location.x, other.location.y,
        this.location.x, this.location.y) < this.circleRad + other.circleRad){
        return true; }
        
    double circleDistance = dist(other.location.x, other.location.y,
        this.location.x, this.location.y);

    return circleDistance <= dist(other.location.x, other.location.y,
        this.location.x, this.location.y);
   }
  
}
