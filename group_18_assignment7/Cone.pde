class Cone {
  float xpos, ypos;
  int speed; 
  int numScoops; //should be equal to length of contents, but abi is initializing so she can write her code
  
  Cone() {}
  Cone(float xpos, float ypos, int speed){
    this.xpos = xpos;
    this.ypos = ypos;
    this.speed = speed;
    numScoops = 0; //initalizes at empty
  }
  
  void drawcone() {
    image(coneImg, xpos, ypos,60,100);
    
    // abi changed this part because the cone was going off screen
    if (xpos >width) { 
      xpos = width;
    } else if (xpos < 0){
      xpos = 0;
    }
    
  } 
  boolean submit(curscoops) { 
   return curscoops.scoopstack.len > 5 
  }
  
  void keyPressed() {
    if (key == CODED) {
      if (keyCode == LEFT) {
        xpos = xpos - speed;
 
      } else if (keyCode == RIGHT) {
         xpos = xpos + speed;
      }
    }
   }
                
}    
  
  
