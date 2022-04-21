class Scoops{
   PShape[] shapes;
   ArrayList<Scoop> scoopList = new ArrayList<Scoop>();
    ArrayList<Scoop> scoopstack = new ArrayList<Scoop>();
   
   Scoops(){
     this.shapes = new PShape[8];
     //this.shapes = new PShape[1];
   } 
   
   void loadShapes(){
     String[] flavors = new String[]{"vanilla", "chocolate", "mint", "grape", "blueberry", "coffee","lemon","strawberry"};
     //String[] flavors = new String[]{"mint"};
     
     for (int i=0; i<shapes.length; i++){
        String source = "data/" + flavors[i] + ".svg";
        shapes[i] = loadShape(source);
        Scoop scoop = new Scoop(i,shapes[i]);
        scoopList.add(scoop);
      }
   }//ends loadShapes
   
 
   
   void display(){
     for (Scoop scoop : scoopList){ 
       
        scoop.catchScoop();
        scoop.move();
        //make new scoop if scoop is caught
        if (scoop.caught){
          //create duplicate scoop to be stacked on cone
          Scoop newScoop = new Scoop(scoop.id,shapes[scoop.id]);
          newScoop.levelOnStack = scoop.levelOnStack;
          //add this duplicate scoop to the scoopstack
          scoopstack.add(newScoop);
        
          //reset the original scoop to top
            scoop.position.y = -50;
            //position.x = random(50,450);
            int newId = int(random(scoops.shapes.length));
            scoop.id = newId;
            scoop.shape = scoops.shapes[scoop.id];
            scoop.caught = false;
        }
      }
      //loop through the scoop stack and display according to cone position
       for (Scoop scoop : scoopstack){ 
           scoop.position.x = cone.xpos+scoop.offsetCone.x;
           scoop.position.y = cone.ypos+scoop.offsetCone.y - scoop.levelOnStack*30;
           scoop.display();
       }
      
   }
   
}
