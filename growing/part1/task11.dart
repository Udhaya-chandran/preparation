/* Task 11 — Reverse a List

Given:

List<int> numbers = [10, 20, 30, 40, 50];

Print the numbers in reverse order.

Expected output:

50
40
30
20
10

💡 Hint: You already know how to make a loop go backwards. */

void main() {
  List<int> numbers = [10, 20, 30, 40, 50];
  for (int i = numbers.length-1; i>=0; i--) {
    print(numbers[i]); 
  }
}
