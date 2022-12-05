class RectCollisionShape extends CollisionShape {

   private int rectWidth;
   private int rectHeight;
   RectCollisionShape(Entity e, int rectWidth, int rectHeight) {
     super(e);
     this.rectWidth = rectWidth;
     this.rectHeight = rectHeight;
   }
   
   boolean hasCollided(Entity other, CollisionShape otherShape) {
     if(otherShape instanceof RectCollisionShape) {
       return hasCollided(other, (RectCollisionShape) otherShape);
     }
     return false;
  }
  
  boolean hasCollided(Entity other, RectCollisionShape otherShape) {
    return !(other.location.x + otherShape.rectWidth < this.entity.location.x || 
      other.location.x > this.entity.location.x + rectWidth ||
      other.location.y + otherShape.rectHeight < this.entity.location.y ||
      other.location.y > this.entity.location.y + rectHeight);
  }

}
