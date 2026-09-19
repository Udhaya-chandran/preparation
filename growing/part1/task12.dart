/*  
Task 12 — Search for a number

Given:

List<int> numbers = [10, 20, 30, 40, 50];

Check whether 30 exists in the list.

Expected output:

30 found

💡 Hint: Loop through the list and compare each number with 30.

 */

void main() {
  List<int> numbers = [10, 20, 30, 40, 50];
  for (int i in numbers) {
    if (i == 30) {
      print('30 found');
    }
  }
}
