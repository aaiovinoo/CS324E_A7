color sky = color(124,185,232);
Scoops scoops = new Scoops();
Scoreboard score = new Scoreboard();

void setup(){
  size(400,800);
  scoops.loadShapes();
 
}

void draw(){
  background(sky);
  //scoops.display();
  score.display();
  
}
