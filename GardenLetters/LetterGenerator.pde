
ArrayList<Float> letterAPositionX = new ArrayList<Float>();
ArrayList<Float> letterAPositionY = new ArrayList<Float>();

class LetterGenerator {

  PShape a, b;
  ArrayList<Letter> letter;
  PVector position;
  float offset = 150;

  LetterGenerator(String input, float x, float y) {
    initShapes();
    position = new PVector(x, y);

    for (int i=0; i<input.length(); i++) {     
      char ch = input.charAt(i);
      float px = position.x + ((i+1) * offset);
      float py = position.y;
      switch(ch) {
      case 'a':
        letter.add(new Letter(a, px, py));
      

        break;
      case 'b':
        letter.add(new Letter (b, px, py));
    

        break;
      }
    }
  }

  void initShapes() {


    fill(-1);

    a = createShape();
    a.beginShape();
    a.texture(grass);
    a.textureMode(NORMAL);
    a.vertex(0.0, 0.0);
    a.vertex(43, 0);
    a.vertex(58, 43);
    a.vertex(59, 91);
    a.vertex(90, 94);
    a.vertex(89, -14);
    a.vertex(88, -62);
    a.vertex(32, -126);
    a.vertex(-28, -124);
    a.vertex(-91, -59);
    a.vertex(-92, -14);
    a.vertex(-88, 94);
    a.vertex(-60, 91);
    a.vertex(-51, 34);
    a.vertex(-38, 0);
    a.beginContour();
    a.vertex(0.0, 0.0);
    a.vertex(0.0, 33.797226);
    a.vertex(73.558655, 32.803192);
    a.vertex(75.54672, -0.9940338);
    a.endContour();
    a.endShape(CLOSE);




    b = createShape();
    b.beginShape();
    b.texture(grass);
    b.textureMode(NORMAL);
    b.vertex(0, -11);
    b.vertex(-0, 263);
    b.vertex(66, 262);
    b.vertex(70, 249);
    b.vertex(85, 260);
    b.vertex(137, 264);
    b.vertex(183, 262);
    b.vertex(215, 206);
    b.vertex(211, 151);
    b.vertex(190, 113);
    b.vertex(126, 99);
    b.vertex(90, 103);
    b.vertex(83, 119);
    b.vertex(84, -14);
    b.beginContour();
    b.vertex(0.0, 0.0);
    b.vertex(-0.9940338, 44.731613);
    b.vertex(66.6004, 45.725647);
    b.vertex(72.56462, 12.92247);
    b.vertex(61.63022, -2.9821014);
    b.endContour();
    b.endShape(CLOSE);
  }


  void update() {
  }
  void draw() {
  }

  void run() {
    update();
    draw();
  }
}
