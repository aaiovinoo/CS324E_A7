class Scoreboard{
  int points, lives;
  int[] request;
 
 Scoreboard(){
    points = 0;
    lives = 3;
    request = new int[5];
    for (int i = 0; i < request.length ; i++){
      request[i] = int(random(scoops.shapes.length));
      //println(int(random(scoops.shapes.length)));
      
    }
 }
 
 void display(){
      ArrayList<Scoop> scoopsReq = new ArrayList<Scoop>();
      
     int w = 100;
     int h = 100;
     stroke(255,199,240);
     strokeWeight(10);
     fill(255);
     rect(5,5,w,h,10);
     fill(0);
     textSize(50);
     textAlign(CENTER,CENTER);
     text(points,w/2,h/2-5);
     
     
     
     String[] flavors = new String[]{"vanilla", "chocolate", "mint", "grape", "blueberry", "coffee","lemon","strawberry"};
     for(int i = 0; i < request.length ; i++){
       //println(request[i]);
       String source = "data/" + flavors[i] + ".svg";
       PShape shape;
       shape = loadShape(source);
       Scoop temp = new Scoop(request[i],shape);
       scoopsReq.add(temp);
       
     }
     int d = 15;
     for(Scoop scoop : scoopsReq){
       scoop.position.y = 500-d;
       scoop.position.x = 40;
       pushMatrix();
       scale(0.5);
       scoop.display();
       popMatrix();
       d+=50;
     }
     
     
     
 }
 
 void upScore(Scoops sc, Cone cone){
   points+=100;
   for (int i = 0; i < request.length ; i++){
        request[i] = int(random(scoops.shapes.length));
        //println(int(random(scoops.shapes.length)));
      
      }
    
    
    sc.scoopstack.clear();
    for (Scoop scoop : sc.scoopList){ 
       scoop.offsetCone.x = -20;
       scoop.offsetCone.y = -40;
       scoop.levelOnStack = 0;
       scoop.caught = false;
    }
   return;
   /*
   Boolean correct = true;
   println();
    for(int i = 0; i < sc.scoopstack.size(); i++){
        if (sc.scoopstack.get(i).id != request[i]){
          correct = false;
        }
    }
    
    if(correct){
      points++;
      for (int i = 0; i < request.length ; i++){
        request[i] = int(random(scoops.shapes.length));
        //println(int(random(scoops.shapes.length)));
      
      }
    }
    
     sc.scoopstack.clear();
     */
 }
 
 void main(Cone cone){
     
     
     if (lives == 0){
        noLoop();
        textSize(100);
        textAlign(CENTER,CENTER);
        text("GAME OVER", width/2, height/2);
     }
   
 }
  
}
