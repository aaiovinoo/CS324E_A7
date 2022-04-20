class Cone {
  float xpos, ypos;
  PShape vector;
  int speed; 
  Contents = int[5];
  
  Cone() {}
  Cone(float xpos, float ypos, int speed){
    this.xpos = xpos;
    this.ypos = ypos;
    this.speed = speed;
  }
  
  
  void drawcone() {
    
    
    vector = loadShape("cones.svg");
    scale(.5,.5);
    shape(vector, xpos, ypos);
    speed = 3; 
    
    if (xpos >1000) {
      xpos = 5;
    } else if (xpos < 0){
      xpos =1000;
    }
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
  
  
