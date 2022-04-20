class Scoreboard{
  int points, lives;
  int[] request;
 
 Scoreboard(){
    points = 0;
    lives = 3;
    request = new int[3];
    for (int i : request){
      request[i] = int(random(scoops.shapes.length));
    }
 }
 
 void display(){
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
     
 }
 
 void upScore(Cone cone){
    points += cone.submit(request); 
 }
 
 void main(Cone cone){
     if (cone.isFull() && cone.contents != request){
         lives--;
         cone.empty();
     }
     
     if (lives == 0){
        noLoop();
        textSize(100);
        textAlign(CENTER,CENTER);
        text("GAME OVER", width/2, height/2);
     }
   
 }
  
}
