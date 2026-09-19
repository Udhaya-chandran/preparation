/* 
Task 18 — Function + List + count

Create:

countEvenNumbers

It should accept a List<int> and return how many even numbers are in the list.

Test with:

[12, 45, 7, 89, 23, 16, 8]

Expected:

3

💡 You've already solved this as Task 9. Now put that same logic inside a function and return the count.
 */

countEvenNumbers(List<int> numbers) {
  int count = 0;
  for (int i in numbers) {
    if (i % 2 == 0) {
      count = count + 1;
    }
  }
  return count;
}

void main() {
  print(countEvenNumbers([12, 45, 7, 89, 23, 16, 8]));
}
