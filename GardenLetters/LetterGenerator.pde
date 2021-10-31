class LetterGenerator {
 
  String input;
  PVector position;
  PImage letterShape;
  
  LetterGenerator (String _input, float x, float y) {
   input = _input;
   position = new PVector(x, y);
      switch(input) {
      case "a":
        letterShape = a;
        break;
      case "b":
        letterShape = b;
        break;
      case "c":
        letterShape = c;
        break;
    }
  
   }
    
    void update() {
      
    }
  
  void draw() {
    shapeMode(CENTER);
  
   image(letterShape, position.x, position.y); 
  
  }
  void run() {
   update();
   draw();
  }
  }
  
