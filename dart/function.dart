/* 

1. What is a function?

A function is a block of code that performs a specific task.

void sayHello() {
  print("Hello Udhaya");
}

To run it:

sayHello();

Output:

Hello Udhaya

So:

Function definition → create the function
Function call       → execute the function
2. Function with a parameter

A parameter lets us send data into the function.

void greet(String name) {
  print("Hello $name");
}

Call:

greet("Udhaya");
greet("Chandran");

Output:

Hello Udhaya
Hello Chandran

Here name is the parameter.

3. Function that returns a value

Instead of printing something, a function can return a value.

int add(int a, int b) {
  return a + b;
}

Use it:

int result = add(10, 20);

print(result);

Output:

30

Flow:

add(10, 20)
     ↓
10 + 20
     ↓
  return 30
     ↓
result = 30
4. void

void means the function doesn't return a value.

void printName() {
  print("Udhaya");
}

But:

int add(int a, int b) {
  return a + b;
}

returns an int.

Think:

void → does something
int  → returns an int
String → returns a String
bool → returns true/false
5. Function returning String
String getName() {
  return "Udhaya";
}
String name = getName();

print(name);

Output:

Udhaya
6. Function returning bool

Very common for validation:

bool isAdult(int age) {
  return age >= 18;
}
print(isAdult(23));

Output:

true
🧠 Remember this structure
returnType functionName(parameters) {
  // code
  return value;
}

Example:

int add(int a, int b) {
  return a + b;
}

Break it down:

int        → return type
add        → function name
(int a...) → parameters
return     → sends result back
 */


/*  

7. Multiple parameters
void userDetails(String name, int age) {
  print("Name: $name");
  print("Age: $age");
}

userDetails("Udhaya", 23);

You can pass multiple values to a function.

8. Optional positional parameter [ ]
void greet(String name, [String? city]) {
  print(name);
  print(city);
}

You can call it with or without the second parameter:

greet("Udhaya");
greet("Udhaya", "Palakkad");

city is optional.

9. Default value
void greet(String name, {String city = "Palakkad"}) {
  print("$name lives in $city");
}
greet("Udhaya");

Output:

Udhaya lives in Palakkad

If you provide it:

greet("Udhaya", city: "Coimbatore");

Output:

Udhaya lives in Coimbatore
10. Named parameters { }

Very common in Flutter:

void userDetails({
  required String name,
  required int age,
}) {
  print(name);
  print(age);
}

Call:

userDetails(
  name: "Udhaya",
  age: 23,
);

required means you must provide that parameter.

You'll see this everywhere in Flutter widgets:

Text(
  "Hello",
  style: TextStyle(
    fontSize: 20,
  ),
)
11. Arrow function =>

For a function with a single expression, you can write it shorter.

Normal:

int add(int a, int b) {
  return a + b;
}

Arrow:

int add(int a, int b) => a + b;

Both do the same thing.

Another example:

bool isAdult(int age) => age >= 18;
12. Anonymous function

A function without a name:

var numbers = [1, 2, 3];

numbers.forEach((number) {
  print(number);
});

The:

(number) {
  print(number);
}

is an anonymous function.

You'll see these frequently with:

forEach
map
where
Flutter button onPressed
callbacks
🧠 Function cheat sheet
void          → returns nothing
int           → returns integer
String        → returns String
bool          → returns true/false

parameter     → input to function
return        → sends result back

[ ]           → optional positional
{ }           → named parameter
required      → named parameter must be provided
=>            → short one-expression function
anonymous     → function without a name
Most important for your Flutter interview

Be comfortable with these:

void functionName() {}

int add(int a, int b) {
  return a + b;
}

bool isValid(String value) => value.isNotEmpty;

void login({
  required String email,
  required String password,
}) {} 

 */