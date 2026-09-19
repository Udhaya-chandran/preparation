/* 
Task 8 — Find the smallest number

Use:

List<int> numbers = [12, 45, 7, 89, 23];

Find and print the smallest number.

Expected:

7
 */

void main() {
  List<int> numbers = [12, 45, 7, 89, 23];
  int smallest = numbers[0];
  for (int i in numbers) {
    if (i < smallest) {
      print(i);
      smallest = i;
    }
  }
  print(smallest);
}
