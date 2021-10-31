LetterGenerator lg;
PShape flower;
PGraphics pgA, pgB;
PImage grass;
String input;



 

int numFlowers = 4;

Flower[] flowers = new Flower[numFlowers];


// window sizes are ints
int scaler = 4;
// the scale command needs a float percentage
float scaler_f = 1.0 / scaler; //applying these to the (wdith, height) within the createGraphics 

void setup() {
  size(800, 600, P2D);
  
   
  grass = loadImage("grass.jpg");
  
  

     loadShape("flower.svg");

  pgA = createGraphics(width, height, P3D);
  
  for(int i = 0; i<flowers.length; i++) {
   flowers[i] = new Flower(width/2, height/2); 
  }
}

void draw() {
for (int i = 0; i<flowers.length; i++) {
background (0);
 


 flowers[i].run(); 

}

}
