color sky = color(124,185,232);
Scoops scoops = new Scoops();
Cone cone;
PImage coneImg;

void setup(){
  size(400,800);
  scoops.loadShapes();
  //Cone(float xpos, float ypos, int speed)
  cone = new Cone(width/2,height-100,2);
  coneImg = loadImage("data/cone.png");
}

void draw(){
  background(sky);
  cone.drawcone();
  scoops.display();
  cone.keyPressed();
}
