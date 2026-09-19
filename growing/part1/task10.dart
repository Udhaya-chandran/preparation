/* 

Task 10 — Count odd numbers

Use the same list:

List<int> numbers = [12, 45, 7, 89, 23, 16, 8];

Count how many odd numbers are in the list.

Expected output:

4
 */
void main() {
  List<int> numbers = [12, 45, 7, 89, 23, 16, 8];
  int count = 0;
  for (int i in numbers) {
    if (i % 2 == 1) {
      count = count + 1;
    }
  }
  print(count);
}
