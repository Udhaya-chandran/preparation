//list

/* 🧠 Important: List index

Dart lists start from index 0, not 1.

List<String> names = ["Udhaya", "Chandran", "Kumar"];
Index	Value
0	Udhaya
1	Chandran
2	Kumar

So:

names[0] // Udhaya
names[1] // Chandran
names[2] // Kumar */
void main() {
  List<String> names = ["Udhaya", "Chandran", "Kumar"];

  print(names[0]);

  List<String> name = ["Udhaya", "Chandran", "Kumar"];

  print(name[2]);
  print(name.length);

  List<String> nams = ["Udhaya", "Chandran", "Kumar"];

  print(nams.contains("Kumar"));
  print(nams.contains("Arun"));

  List<int> n = [1, 2, 3, 4, 5];
  for (int number in n) {
    if (number % 2 == 0) {
      print(number);
    }
  }

  /* 
  
  Dart List — Important Methods
List<String> names = ["Udhaya", "Chandran", "Kumar"];
1. add() — add one item
names.add("Arun");

Result:

[Udhaya, Chandran, Kumar, Arun]
2. addAll() — add multiple items
names.addAll(["Arun", "Vijay"]);

Adds both items at the end.

3. insert() — add at a specific index
names.insert(1, "Arun");

Result:

[Udhaya, Arun, Chandran, Kumar]
4. insertAll() — add multiple items at an index
names.insertAll(1, ["Arun", "Vijay"]);

Result:

[Udhaya, Arun, Vijay, Chandran, Kumar]
5. remove() — remove by value
names.remove("Chandran");

Removes the first matching "Chandran".

6. removeAt() — remove by index
names.removeAt(1);

Removes whatever is at index 1.

7. removeWhere() — remove based on condition
List<int> numbers = [1, 2, 3, 4, 5];

numbers.removeWhere((number) => number % 2 == 0);

Result:

[1, 3, 5]
8. clear() — remove everything
names.clear();

Result:

[]
9. contains() — check whether item exists
names.contains("Kumar");

Returns:

true

or

false
10. isEmpty
names.isEmpty

Checks whether the list has 0 items.

11. isNotEmpty
names.isNotEmpty

Checks whether the list has at least one item.

12. first / last
names.first;
names.last;

Example:

first → Udhaya
last  → Kumar
13. indexOf()

Finds the index of an item:

names.indexOf("Chandran");

Result:

1

If it doesn't exist, it returns -1.

14. sort()

Sorts the list.

List<int> numbers = [5, 2, 8, 1];

numbers.sort();

Result:

[1, 2, 5, 8]
15. reversed

Reverses the order:

List<int> numbers = [1, 2, 3, 4];

print(numbers.reversed.toList());

Result:

[4, 3, 2, 1]
16. sublist() — slicing

Dart doesn't normally use a slice() method like some languages.

Use:

List<int> numbers = [10, 20, 30, 40, 50];

numbers.sublist(1, 4);

Result:

[20, 30, 40]

Important:

sublist(start, end)

start is included, end is excluded.

So:

Index:   0   1   2   3   4
Value:  10  20  30  40  50

sublist(1, 4)
         ↑       ↑
       include  exclude
🧠 For your interview notes

Remember these groups:

Add

add()
addAll()
insert()
insertAll()

Remove

remove()
removeAt()
removeWhere()
clear()

Check

contains()
isEmpty
isNotEmpty

Find

first
last
indexOf()

Modify/order

sort()
reversed
sublist()
   */

  /* LIST
│
├── Add       → add(), addAll(), insert()
├── Remove    → remove(), removeAt(), clear()
├── Check     → contains(), isEmpty
├── Find      → first, last, indexOf()
├── Order     → sort(), reversed
└── Portion   → sublist() 


indexWhere()

This one is slightly different: it finds the index of the first element that satisfies a condition.

var nums = [10, 25, 30, 45];

var index = nums.indexWhere((value) => value > 20);

print(index); // 1

Because 25 is the first value where value > 20 is true.

🧠 Easy memory:

contains → Does value exist? → true/false
indexOf → Where is this value? → index
indexWhere → Where is the first value matching this condition? → index

where()

Returns all elements that match the condition.

var nums = [10, 25, 30, 45];

var result = nums.where((value) => value > 20);

print(result); // (25, 30, 45)
firstWhere()

Returns only the first element that matches the condition.

var result = nums.firstWhere((value) => value > 20);

print(result); // 25

🧠 Easy memory:

where() → ALL matching values
firstWhere() → FIRST matching value

So your thought “first element based on condition” is correct for firstWhere(). ✅


map()

Used to transform each element into another value. It returns a new Iterable.

var nums = [1, 2, 3];

var result = nums.map((value) => value * 2);

print(result); // (2, 4, 6)

Think:

map() → change/transform each value

forEach()

Used to perform an action for each element. It doesn't create a transformed list.

var nums = [1, 2, 3];

nums.forEach((value) {
  print(value);
});

Think:

forEach() → do something for each value

🧠 Super simple

map() → transform → returns new values
forEach() → perform action → returns nothing (void)

map() and where() return an Iterable. toList() converts that Iterable into a List.

var nums = [1, 2, 3];

var result = nums.map((x) => x * 2).toList();

print(result); // [2, 4, 6]

🧠 Remember:

map() → transform
where() → filter
toList() → convert to List

Good. No need to over-study this one. 😄



split()

Used on a String to split it into a List of Strings based on a separator.

var text = "Dart,Flutter,Firebase";

var result = text.split(",");

print(result);
// [Dart, Flutter, Firebase]

String → List

join()

Used on a List to combine its elements into one String, using a separator.

var skills = ["Dart", "Flutter", "Firebase"];

var result = skills.join(", ");

print(result);
// Dart, Flutter, Firebase

List → String

🧠 Easy memory:

split → break String → List
join → combine List → String


==

Used to check equality — whether two values are considered equal.

var a = 10;
var b = 10;

print(a == b); // true

For objects, == can be overridden to define what "equal" means.

identical()

Checks whether two references point to the exact same object in memory.

var a = SomeClass();
var b = a;

print(identical(a, b)); // true

Here a and b refer to the same object.

🧠 Easy memory:

== → Are they equal?
identical() → Are they the exact same object?



*/

  var nums = [1, 2, 3];

  nums.forEach((value) {
    print(value);
  });

  for(var n in nums) {
    print(n);
  }
}
