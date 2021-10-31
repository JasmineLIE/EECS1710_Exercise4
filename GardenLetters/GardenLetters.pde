LetterGenerator lg;
PShape flower;
PGraphics pgA, pgB;
PImage grass;
String input;

float randomAX, randomAY, randomBX, randomBY;



int numFlowers = 4;

Flower[] flowersA = new Flower[numFlowers];
Flower[] flowersB = new Flower[numFlowers];


// window sizes are ints
int scaler = 4;
// the scale command needs a float percentage
float scaler_f = 1.0 / scaler; //applying these to the (wdith, height) within the createGraphics 

void setup() {
  size(800, 600, P2D);


  grass = loadImage("grass.jpg");
  flower = loadShape("flower.svg");
  pgA = createGraphics(width, height, P3D);



  for (int i = 0; i<flowersA.length; i++) {


    flowersA[i] = new Flower(randomAX = random(letterAPositionX.size())
, randomAY= random(letterAPositionY.size()));
  }
}

void draw() {
  for (int i = 0; i<flowersA.length; i++) {
    background (0);



    flowersA[i].run();
  }
}
