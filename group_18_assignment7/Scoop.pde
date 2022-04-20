class Scoop{
  int id, levelOnStack;
  PVector position, offsetCone;
  float velocity;
  PShape shape;
  boolean caught;

 
  Scoop(int id, PShape shape){
    this.id = id;
    this.shape = shape;
    position = new PVector(id*40,-50);
    offsetCone = new PVector(-20,-40);
    velocity = 3*random(.9,1.1); //pixels per frame
    // adding a small difference in velocities to make the cones fall at different times
    caught = false;  
    levelOnStack = 0;
}
  
  void display(){
    //Draws scoop based on id, vel, pos
    shape(shape, position.x, position.y, 100, 100); 
  }
  
  void move(){
    //makes scoop fall
    if (!caught){
      position.y += velocity;
      //reset velocity and position at top when it reaches the bottom of the screen
      if (position.y > height){
        position.y = -50;
        //position.x = random(50,450);
        int newId = int(random(scoops.shapes.length));
        id = newId;
        shape = scoops.shapes[id];
      }
    }
    
    display();
  }
  
  void catchScoop(){
    //TO-DO: checks how close to the scoop is to the cone using their position attributes
    PVector collisionPoint = new PVector(cone.xpos+30,cone.ypos+10 - (levelOnStack*30+10));
    PVector bottom = new PVector (position.x+50,position.y+70);
    //ellipse(bottom.x,bottom.y,10,10);
    if (dist(collisionPoint.x,collisionPoint.y,bottom.x,bottom.y)<15){
      caught = true;
      //upping the contents;
      levelOnStack = cone.numScoops;
      cone.numScoops += 1;
      
      //TO-DO ASHWIN: add to scoreboard
      
    }
  }
}
