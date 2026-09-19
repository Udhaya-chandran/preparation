void main() {
  /* 
  
  Write a Dart program that has:

name = "Udhaya"
age = 23

Then:

If age is 18 or above, print:
Udhaya is an adult
Otherwise print:
Udhaya is a minor
Expected output
Udhaya is an adult
  */

  String name = "Udhaya";
  int age = 23;

  if (age >= 18) {
    print('$name is an adult');
  } else {
    print('$name is a minor');
  }
}
