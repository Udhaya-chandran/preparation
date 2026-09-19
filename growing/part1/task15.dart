/* 

Task 16 — Function + condition

Create a function:

checkEven

It should accept an int and return a bool:

If the number is even → true
If odd → false

Then call it with 10 and print the result.

Expected output:

true

💡 Think about the % operator you used earlier. Don't worry if you need to refer back.

 */

checkEven(int num) {
  if (num % 2 == 0) {
    return true;
  } else {
    return false;
  }
}

void main() {
  print(checkEven(10));
}
