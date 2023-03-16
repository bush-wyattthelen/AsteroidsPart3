class Bullet extends Floater {
  public Bullet(Spaceship ship) {
    this.corners = 5;
    this.xCorners = new int[]{-4, 0, 2, 0, -4};
    this.yCorners = new int[]{2, 2, 0, -2, -2};
    this.myColor = 255;
    this.myCenterX = ship.myCenterX;
    this.myCenterY = ship.myCenterY;
    this.myPointDirection = ship.myPointDirection;
    this.myXspeed = 10 * cos(radians((float)myPointDirection));
    this.myYspeed = 10 * sin(radians((float)myPointDirection));
  }
  
  public void move() {
    myCenterX += myXspeed;
    myCenterY += myYspeed;
  }
}
