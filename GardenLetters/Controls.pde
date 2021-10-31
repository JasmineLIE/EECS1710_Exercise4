int slideCounter = 1;
String stage;
void mousePressed() {
if (mousePressed) {
  slideCounter ++;
  if (slideCounter > 3) slideCounter = 1;
  
} 

switch (slideCounter) {
 case 1:
 stage = "a";
 break;
 case 2:
 stage = "b";
 break;
 case 3:
 stage = "c";
 break;
}
println("The Counter is : " + slideCounter + " and the input is " + stage);
}
