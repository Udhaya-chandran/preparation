/* Task 13 — Search with found

Now make it a little more realistic.

Given:

List<int> numbers = [10, 20, 30, 40, 50];

Create a bool variable called found starting as false.

If 30 exists:

change found to true

After the loop:

if found is true → print Number found
otherwise → print Number not found

💡 You can refer to your previous task. This one is mainly to practice bool + loop + condition.
  */
void main() {
  List<int> numbers = [10, 20, 30, 40, 50];
  bool found = false;
  for (int i in numbers) {
    if (i == 30) {
      found = true;
    }
  }
  if (found == true) {           //You can write: if (found) instead of: if (found == true)
    print('Number found');
  } else {
    print("number not found");
  }
}
