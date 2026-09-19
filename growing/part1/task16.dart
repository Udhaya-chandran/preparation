/*
unction + List

Create a function called:

findLargest

It should accept:

List<int> numbers

and return the largest number.

Test it with:

[12, 45, 7, 89, 23]

Expected output:

89

💡 You've already solved the largest number task earlier. Now we're combining that logic with a function + return value.

 */

findLargest(List<int> numbers) {
  int largest = numbers[0];
  for (int i in numbers) {
    if (i > largest) {
      largest = i;
    }
  }
  return largest;
}

void main() {
  print(findLargest([12, 45, 7, 89, 23]));
}
