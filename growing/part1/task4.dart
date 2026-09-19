/* 
for loop + condition

Write a Dart program to print only the even numbers from 1 to 20.

Expected output:

2
4
6
8
10
12
14
16
18
20

💡 Hint only: Use a for loop and the % operator.
 */

void main() {
  for (int i = 1; i <= 20; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }
}
