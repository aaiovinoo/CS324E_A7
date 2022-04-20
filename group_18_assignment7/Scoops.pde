class Scoops{
   PShape[] shapes;
   ArrayList<Scoop> scoopList = new ArrayList<Scoop>();
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
      }
   }
   
}
