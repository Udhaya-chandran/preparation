/*
Task 21 — Return the reversed String

Create a function:

reverseString

It should accept a String and return the reversed string.

Test:

reverseString("Udhaya")

Expected:

ayahdU

💡 Hint: You already know how to loop backwards through indexes from Task 11.
 */
reverseString(String name) {
  String reversed = '';
  for (int i = name.length - 1; i >= 0; i--) {
    // print(i);
    reversed = reversed + name[i];
  }
  return reversed;
}

void main() {
  print(reverseString('Udhaya'));
}
