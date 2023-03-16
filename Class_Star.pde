class Star extends Floater {
  Star(double myCenterX, double myCenterY) {
    this.corners = 3;
    this.xCorners = new int[]{-1, 0, 1};
    this.yCorners = new int[]{-1, 0, -1};
    this.myColor = 255;
    this.myCenterX = myCenterX;
    this.myCenterY = myCenterY;
    this.myXspeed = 0;
    this.myYspeed = 0;
    this.myPointDirection = 0;
  
  }
}
