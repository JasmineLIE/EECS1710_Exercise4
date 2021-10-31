class Flower {
  PVector position;
  float spread = 0.2;


  Flower(float x, float y) {
    position = new PVector(x, y);
  }

  void update() {

    position.x = position.x +(random(-spread, spread));
    position.y = position.y+(random(-spread, spread ));
  } 
  void draw() {

    shapeMode(CENTER);
    shape(flower, position.x, position.y, -150, -150);
  }
  void run() {
    update();
    draw();
  }
}
