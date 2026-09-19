/* 

🧩 Task 19 — Function + String

Create a function called:

countVowels

It should accept a String and return the number of vowels (a, e, i, o, u).

Test:

countVowels("Udhaya");

Expected output:

3

💡 Hint: You can loop through a string using its characters. If you get stuck, refer to your list-loop pattern and figure out the string equivalent.
 */

countVowels(String word) {
  List<String> vowels = ['a', 'e', 'i', 'o', 'u'];
  int count = 0;

  for (int i = 0; i < word.length; i++) {
    if (vowels.contains(word.toLowerCase()[i])) {
      count = count + 1;
    }
  }
  return count;
}

void main() {
  print(countVowels('Udhaya'));
}
