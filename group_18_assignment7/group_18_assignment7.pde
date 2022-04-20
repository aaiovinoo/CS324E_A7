color sky = color(124,185,232);
Scoops scoops = new Scoops();
Cone cone;

void setup(){
  size(400,800);
  scoops.loadShapes();
  cone = new Cone(15,800,0);
}

void draw(){
  background(sky);
  scoops.display();
  cone.drawcone();
  cone.keyPressed();
}
