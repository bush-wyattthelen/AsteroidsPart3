class Trail {
  int startX;
  int startY;
  int endX;
  int endY;
  int gamma;
  
  Trail(int startX, int startY, int endX, int endY) {
    this.startX = startX;
    this.startY = startY;
    this.endX = endX;
    this.endY = endY;
    this.gamma = 255;
  }
  
  Trail(float startX, float startY, float endX, float endY) {
    this.startX = (int)startX;
    this.startY = (int)startY;
    this.endX = (int)endX;
    this.endY = (int)endY;
    this.gamma = 255;
  }
  
  void show() {
    stroke(255, gamma);
    line(startX, startY, endX, endY);
    gamma -= 5;
    stroke(0);
  }
}
