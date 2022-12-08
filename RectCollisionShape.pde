class RectCollisionShape extends CollisionShape {

   private int rectWidth;
   private int rectHeight;
   RectCollisionShape(Entity e, int rectWidth, int rectHeight) {
     super((Collidable)e, e.location);
     this.rectWidth = rectWidth;
     this.rectHeight = rectHeight;
   }
   
   boolean hasCollided(CollisionShape otherShape) {
     if(otherShape instanceof RectCollisionShape) {
       return hasCollided((RectCollisionShape) otherShape);
     }
     if(otherShape instanceof CircleCollisionShape) {
       return hasCollided((CircleCollisionShape) otherShape);
     }
     return false;
  }
  
  boolean hasCollided(RectCollisionShape other) {
    return !(other.location.x + other.rectWidth < this.location.x || 
      other.location.x > this.location.x + rectWidth ||
      other.location.y + other.rectHeight < this.location.y ||
      other.location.y > this.location.y + rectHeight);
  }
  
  boolean hasCollided(CircleCollisionShape circle) {
    
    float x = abs(circle.location.x - location.x);
    float y = abs(circle.location.y - location.y);

    if (x > (rectWidth/2 + circle.circleRad)) { return false; }
    if (y > (rectHeight/2 + circle.circleRad)) { return false; }

    if (x <= (rectWidth/2)) { return true; } 
    if (y <= (rectHeight/2)) { return true; }

    double cornerDistance_sq = Math.pow((x - rectWidth/2.0),2.0) +
                         Math.pow((y - rectHeight/2.0),2.0);

    return (cornerDistance_sq <= (Math.pow(circle.circleRad,2)));
  }

}
