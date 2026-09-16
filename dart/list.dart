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
└── Portion   → sublist() */
}
