class Scoop{
  int id;
  PVector position;
  float velocity;
  PShape shape;
 
  Scoop(int id, PShape shape){
    this.id = id;
    this.shape = shape;
    position = new PVector(id*40,-50);
    velocity = 4*random(.9,1.1); //pixels per frame
    // adding a small difference in velocities to make the cones fall at different times
  }
  
  void display(){
    //Draws scoop based on id, vel, pos
    shape(shape, position.x, position.y, 100, 100); 
  }
  
  void move(){
    display();
    //makes scoop fall
    position.y += velocity;
    //reset velocity and position at top when it reaches the bottom of the screen
    if (position.y > height){
      position.y = -50;
      //position.x = random(50,450);
      int newId = int(random(scoops.shapes.length));
      id = newId;
      shape = scoops.shapes[id];
    }
    
    //TO-DO: increase velocity according score
  }
  
  void catchScoop(){
    //TO-DO: checks how close to the scoop is to the cone using their position attributes
    
    //TO-DO: if the scoop collides with the cone, calls cone.addScoop() 
  }
}
