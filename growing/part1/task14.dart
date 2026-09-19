/* 

Task 14 — Function

Create a function called:

greetUser

It should take a String name and print:

Hello Udhaya

Then call the function from main().

💡 Hint: You already know how to create and call a void function from our earlier theory.
  */

void greetUser(String name) {
  print('Hello $name');
}

/* task 15 Function with return value  


create a function called:

addNumbers

It should accept two integers and return their sum.

Then call it with:

10 and 20

Expected output:

30 */
addNumbers(int a, int b) {
  return a + b;
}

void main() {
  greetUser('Udhaya');
  var results = addNumbers(10, 20);
  print(results);
  print(addNumbers(10, 20));
}
