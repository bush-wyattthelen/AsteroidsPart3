public class Spaceship extends Floater {
  Spaceship(double myCenterX, double myCenterY, double myXspeed, double myYspeed, double myPointDirection) {
    this.corners = 4;
    this.xCorners = new int[]{-8, -4, -8, 8};
    this.yCorners = new int[]{-8, 0, 8, 0};
    this.myColor = 255;
    this.myCenterX = myCenterX;
    this.myCenterY = myCenterY;
    this.myXspeed = myXspeed;
    this.myYspeed = myYspeed;
    this.myPointDirection = myPointDirection;
  }
  
  void hyperspace() {
    myCenterX = mouseX;
    myCenterY = mouseY;
  }
  
  public void move ()   //move the floater in the current direction of travel
  {      
    
    trails.add(new Trail((float)myCenterX, (float)myCenterY, (float)(myCenterX - sqrt((float)(myXspeed * myXspeed + myYspeed * myYspeed)) * cos((float)atan((float)(myYspeed/myXspeed)))), (float)(myCenterY - sqrt((float)(myXspeed * myXspeed + myYspeed * myYspeed)) * sin((float)atan((float)(myYspeed/myXspeed))))));
    
    //change the x and y coordinates by myXspeed and myYspeed       
    myCenterX += myXspeed;    
    myCenterY += myYspeed;     

    //wrap around screen    
    if(myCenterX > 800)
    {     
      myCenterX = 0;    
    }    
    else if (myCenterX<0)
    {     
      myCenterX = 800;    
    }    
    if(myCenterY > 800)
    {    
      myCenterY = 0;    
    } 
    
    else if (myCenterY < 0)
    {     
      myCenterY = 800;    
    }   
  }   
}
