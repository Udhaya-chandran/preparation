/*  
Task 9 — Count even numbers

Use:

List<int> numbers = [12, 45, 7, 89, 23, 16, 8];

Find how many even numbers are in the list.

Expected output:

4

You can refer to your previous code if you get stuck. 💪
 */

void main() {
  List<int> numbers = [12, 45, 7, 89, 23, 16, 8];
  int count = 0;
  for (int i in numbers) {
    if (i % 2 == 0) {
      count = count + 1;
    }
  }
  print(count);
}
