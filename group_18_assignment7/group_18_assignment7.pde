color sky = color(124,185,232);
Scoops scoops = new Scoops();

void setup(){
  size(400,800);
  scoops.loadShapes();
}

void draw(){
  background(sky);
  scoops.display();
}
