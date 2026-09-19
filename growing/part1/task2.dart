/* 
Task 2 — if / else if / else

Write a Dart program:

int mark = 72;

Conditions:

mark >= 90 → print Grade A
mark >= 75 → print Grade B
mark >= 50 → print Grade C
Otherwise → print Fail
 */

void main() {
  int mark = 72;
  if (mark >= 90) {
    print('Grade A');
  } else if (mark >= 75) {
    print('Grade B');
  } else if (mark >= 50) {
    print('Grade C');
  } else {
    print('Fail');
  }

  //conditions from highest to lowest. That's important because Dart checks them top-to-bottom.
}
