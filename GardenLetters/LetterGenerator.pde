class LetterGenerator {
 
  string input;
  PVector postion;
  PShape letterShape;
  
  LetterGenerator (String _input, float x, float y) {
   input = _input;
   position = new PVector(x, y);
   
   switch(input) {
    case "a":
    break;
    case "b":
    break;
    case "c";
    break;
   }
  }
  
  void draw() {
    letterShape.setTexture(grass);
   shape(letterShape, position.x, position.y); 
  }
}
