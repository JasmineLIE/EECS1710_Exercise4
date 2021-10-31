Flower flowersA, flowersB, flowersC;
PShape flower;
PImage grass;
String input;
PGraphics pgA, pgB, pgC;
PShape a, b, c;




int numFlowers = 5;

Flower[] flowersA = new Flower[numFlowers];
Flower[] flowersB = new Flower[numFlowers];
Flower[] flowersC = new Flower[numFlowers];




// window sizes are ints
int scaler = 4;
// the scale command needs a float percentage
float scaler_f = 1.0 / scaler; //applying these to the (wdith, height) within the createGraphics 

void setup() {
  size(800, 600, P2D);


  grass = loadImage("grass.jpg");
  flower = loadShape("flower.svg");







  }
}

void draw() {
  

  }
}
