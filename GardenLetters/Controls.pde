boolean letterSwap = false;
void mousePressed() {
  if (letterSwap) {
    letterSwap = false;
    input = "a";
  } else {
    letterSwap = true;
    input = "b";

  }
  
  if (letterSwap) {
    println("LetterSwap is " + input);
  } else {
    println("LetterSwap is " + input);
  }
}
