int slideCounter = 0;
void mousePressed() {
if (mousePressed) {
  slideCounter ++;
  if (slideCounter > 3) slideCounter = 0;
  
} 

switch (slideCounter) {
 case 1:
 input = "a";
 break;
 case 2:
 input = "b";
 break;
 case 3:
 input = "c";
 break;
}
println("The letter is: " + slideCounter);
}
