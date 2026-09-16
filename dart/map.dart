/* 
Dart Map

A Map stores data as key → value pairs.

Think of it like:

key       value
name   →  Udhaya
age    →  23
city   →  Palakkad
1. Create a Map
Map<String, dynamic> user = {
  "name": "Udhaya",
  "age": 23,
  "city": "Palakkad",
};

Here:

"name" → key
"Udhaya" → value

"age" → key
23 → value
2. Get a value using the key
print(user["name"]);

Output:

Udhaya

And:

print(user["age"]);

Output:

23

👉 Map doesn't use index like List. It uses keys.

List → names[0]
Map  → user["name"]
3. Add a new key/value
user["email"] = "udhaya@gmail.com";

Now:

{
  name: Udhaya,
  age: 23,
  city: Palakkad,
  email: udhaya@gmail.com
}
4. Update a value

If the key already exists:

user["age"] = 24;

The old value 23 becomes 24.

So the same syntax is used for:

Add if key doesn't exist
Update if key already exists

5. remove()
user.remove("city");

Removes the city key and its value.

6. containsKey()

Checks whether a key exists:

print(user.containsKey("name"));

Output:

true
print(user.containsKey("phone"));

Output:

false
7. containsValue()

Checks whether a value exists:

print(user.containsValue("Udhaya"));

Output:

true
8. length
print(user.length);

Returns the number of key-value pairs.

9. isEmpty
print(user.isEmpty);

true → no data
false → has data

10. isNotEmpty
print(user.isNotEmpty);

true → contains data.

11. clear()

Remove everything:

user.clear();

Result:

{}
12. keys

Get all keys:

print(user.keys);

Example:

(name, age, city)
13. values

Get all values:

print(user.values);

Example:

(Udhaya, 23, Palakkad)
14. forEach()

Loop through a Map:

user.forEach((key, value) {
  print("$key : $value");
});

Example output:

name : Udhaya
age : 23
city : Palakkad
15. for-in with entries

Another common way:

for (var entry in user.entries) {
  print("${entry.key} : ${entry.value}");
}
⭐ Most important for Flutter

You'll frequently see:

Map<String, dynamic>

For example, an API might return JSON like:

{
  "id": 101,
  "name": "Udhaya",
  "email": "udhaya@gmail.com"
}

In Dart:

Map<String, dynamic> data = {
  "id": 101,
  "name": "Udhaya",
  "email": "udhaya@gmail.com",
};

Then:

print(data["name"]);

gives:

Udhaya

That's why Map is extremely important for your Flutter interviews.

🧠 Your simple memory map
LIST
→ index
→ [0], [1], [2]
→ duplicates allowed

SET
→ unique values
→ no duplicates

MAP
→ key + value
→ ["name"], ["age"]
→ very common with JSON/API

You don't need to memorize every method. Understand these three structures first.
 */


/* 

Good 👍 Now let's connect List + Map, because this is something you'll see a lot in Flutter API responses.

List<Map<String, dynamic>>

Imagine an API gives you multiple users:

List<Map<String, dynamic>> users = [
  {
    "name": "Udhaya",
    "age": 23,
  },
  {
    "name": "Chandran",
    "age": 25,
  },
  {
    "name": "Kumar",
    "age": 22,
  },
];

Think of it like:

List
 │
 ├── Map → User 1
 │      name → Udhaya
 │      age  → 23
 │
 ├── Map → User 2
 │      name → Chandran
 │      age  → 25
 │
 └── Map → User 3
        name → Kumar
        age  → 22
Access first user's name
print(users[0]["name"]);

Output:

Udhaya

Why?

users[0]        → first Map
users[0]["name"] → name from that Map
Access second user's age
print(users[1]["age"]);

Output:

25
Loop through all users
for (var user in users) {
  print(user["name"]);
}

Output:

Udhaya
Chandran
Kumar
Very common API pattern

When you call an API, you might get:

[
  {
    "id": 1,
    "name": "Udhaya"
  },
  {
    "id": 2,
    "name": "Chandran"
  }
]

Before creating proper Dart model classes, you may temporarily handle this as:

List<Map<String, dynamic>>
🧠 Remember
List → collection of items
Map  → key/value data

List<Map> → collection of objects/data
 */