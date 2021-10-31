

LetterGenerator lgA, lgB, lgC;
PShape flower;
PImage grass;

PImage a, b, c;



PGraphics pg1, pg2, pg3;

int scaler = 10;
int numFlowers = 5;

// the scale command needs a float percentage
float scaler_f = 1.0 / scaler;

Flower[] flowersA = new Flower[numFlowers];
Flower[] flowersB = new Flower[numFlowers];
Flower[] flowersC = new Flower[numFlowers];




void setup() {
  size(800, 600, P2D);
    grass = loadImage("grass.jpg");
  flower = loadShape("flower.svg");
  a = loadImage("A.png");
  b = loadImage("B.png");
  c = loadImage("C.png");

  lgA = new LetterGenerator("a", width/2, 0);
  lgB = new LetterGenerator("b", width/2, 0);
  lgC = new LetterGenerator("c", width/2, 0);





for (int i = 0; i < flowersA.length; i++) {
 flowersA[i] = new Flower(random(width), random(height)); 
  flowersB[i] = new Flower(random(width), random(height)); 
   flowersC[i] = new Flower(random(width), random(height)); 
}





  }


void draw() {
  
  
 if (stage == "a") {

 background(#52FFE6);
 lgA.run();

for (int i=0; i<flowersA.length; i++) {
    flowersA[i].run();
  }
  } else if (stage == "b") {
    background(#FF52E8);
   lgB.run();
   for (int i=0; i<flowersB.length; i++) {
    flowersB[i].run();
  }
  } else {
    background(#AEFF52);
       lgC.run();
   for (int i=0; i<flowersC.length; i++) {
    flowersC[i].run();
  }
  }
}
