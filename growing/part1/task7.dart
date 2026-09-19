/* 
Task 7 — Find the largest number

Create a Dart program with:

List<int> numbers = [12, 45, 7, 89, 23];

Find and print the largest number.

Expected output:

89

💡 Hint: Start with a variable containing the first number, then loop through the list and compare each number with it.

Don't use sort() — I want you to practice the logic.

 */

void main() {
  List<int> numbers = [12, 45, 7, 89, 23];
  int largest_number = 0;
  for (int i in numbers) {
    if (i >= largest_number) {
      largest_number = i;
      print(i);
    }
  }
  print(largest_number);
}
