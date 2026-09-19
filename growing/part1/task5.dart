/* 
Task 5 — for loop + sum

Write a Dart program to calculate the sum of numbers from 1 to 10.

Expected output:

55

💡 Hint: Create a variable like sum = 0, then use a for loop to add each number to it.

 */

void main() {
  int sum = 0;
  for (int i = 1; i <= 10; i++) {
    sum = sum + i;
  }
  print(sum);
}
