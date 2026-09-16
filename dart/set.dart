/* 
Dart Set — Examples
1. Create a Set
Set<String> names = {"Udhaya", "Chandran", "Kumar"};

print(names);

Output:

{Udhaya, Chandran, Kumar}
2. Duplicate values
Set<int> numbers = {1, 2, 2, 3, 3, 4};

print(numbers);

Output:

{1, 2, 3, 4}

👉 Duplicates are automatically removed.

3. add() — add one item
Set<String> names = {"Udhaya", "Chandran"};

names.add("Kumar");

print(names);

Output:

{Udhaya, Chandran, Kumar}
4. add() duplicate
names.add("Kumar");

Nothing new is added because "Kumar" already exists.

5. addAll() — add multiple items
Set<String> names = {"Udhaya", "Chandran"};

names.addAll({"Kumar", "Arun"});

print(names);

Output:

{Udhaya, Chandran, Kumar, Arun}
6. remove() — remove by value
Set<String> names = {"Udhaya", "Chandran", "Kumar"};

names.remove("Chandran");

print(names);

Output:

{Udhaya, Kumar}
7. contains() — check value
Set<String> names = {"Udhaya", "Chandran", "Kumar"};

print(names.contains("Kumar"));
print(names.contains("Arun"));

Output:

true
false
8. length
Set<String> names = {"Udhaya", "Chandran", "Kumar"};

print(names.length);

Output:

3
9. isEmpty
Set<String> names = {};

print(names.isEmpty);

Output:

true

Checks whether the Set contains nothing.

10. isNotEmpty
Set<String> names = {"Udhaya"};

print(names.isNotEmpty);

Output:

true

Checks whether the Set contains at least one item.

11. clear() — remove everything
Set<String> names = {"Udhaya", "Chandran", "Kumar"};

names.clear();

print(names);

Output:

{}
12. for-in with Set
Set<String> names = {"Udhaya", "Chandran", "Kumar"};

for (String name in names) {
  print(name);
}

It prints each item:

Udhaya
Chandran
Kumar
13. Convert List → Set

Very useful for removing duplicates:

List<int> numbers = [1, 2, 2, 3, 3, 4];

Set<int> uniqueNumbers = numbers.toSet();

print(uniqueNumbers);

Output:

{1, 2, 3, 4}
14. Convert Set → List
Set<int> numbers = {1, 2, 3};

List<int> numberList = numbers.toList();

print(numberList);

Output:

[1, 2, 3]
⭐ List vs Set — remember this
	List	Set
Duplicates	✅ Yes	❌ No
Index	✅ Yes	❌ No
add()	✅	✅
remove()	✅	✅
contains()	✅	✅
Order	Maintained	Don't rely on index/order
Common use	Ordered collection	Unique values
Interview answer

If they ask:

"What is the difference between List and Set in Dart?"

Say:

List is an ordered collection that allows duplicate values, while Set stores unique values and doesn't allow duplicates.

That's enough. 👍
 */
