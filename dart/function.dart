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



void function

A void function doesn't return a value to the caller.

void sayHello() {
  print("Hello Udhaya");
}
Function with return value

A function can return a value, and we specify the return type.

int add(int a, int b) {
  return a + b;
}

var result = add(10, 20);
print(result); // 30

Here:

int → return type
return a + b → sends the value back
void → no value returned

🧠 Remember:

void → does something
int/String/bool/... → gives something back

One small nuance: a void function can use return; to exit early, but it cannot return a value.







Use void when you only want the function to do something

You don't need a result back.

void sayHello() {
  print("Hello Udhaya");
}

sayHello();

The function performs an action → no result needed.

Examples:

Print something
Show a message
Update UI/state
Send a notification
Change some data
Use return when you need the function to give a result back
int add(int a, int b) {
  return a + b;
}

int result = add(10, 20);

print(result); // 30

Here you need the calculated value somewhere else → return it.

Examples:

Calculate total
Check something and return true/false
Get a user's name
Convert data
Calculate a price
Easy way to decide 🧠

Ask yourself:

“Do I need the result outside this function?”

No → void

void printName() {
  print("Udhaya");
}

Yes → return a value

String getName() {
  return "Udhaya";
}

And remember: return isn't the opposite of void.
return is the statement used to send a value back (or exit early), while void is a return type meaning the function doesn't provide a value.

Now let's continue from where we were:






Ask one simple question:

“After this function finishes, do I need the answer/value somewhere else?”

Example 1 — Don't need the result → void
void sayHello() {
  print("Hello Udhaya");
}

You call it:

sayHello();

It simply does an action. You're not expecting any value from it.

Example 2 — Need the result → return

Suppose you want to calculate something:

int add(int a, int b) {
  return a + b;
}

Now:

int total = add(10, 20);

Why return?

Because you want to take 30 out of the function and store/use it.

add()
  ↓
  30
  ↓
total

You can then do:

print(total);

or:

if (total > 20) {
  print("Greater");
}

That's why it needs to return.

Real Flutter example

Imagine:

void showLoading() {
  // show loading indicator
}

You don't need an answer → void.

But:

bool isLoggedIn() {
  return true;
}

You need the answer outside:

if (isLoggedIn()) {
  // go to home
}

Here the function gives you true/false.

🧠 The easiest rule for you

Don't ask:

“Should I use return?”

Ask:

“Will the caller need something from this function?”

No → void

Yes → return that value

And honestly, this is something you'll understand much better through small coding tasks than theory. We can do that after finishing the function basics, just like we planned. ❤️




Positional parameters

Arguments are passed based on their position/order.

void greet(String name, int age) {
  print("$name is $age");
}

greet("Udhaya", 23);

Here:

"name" → 1st position
"23"   → 2nd position

So the order matters.

Named parameters

Arguments are passed using the parameter name, so the order doesn't matter.

void greet({required String name, required int age}) {
  print("$name is $age");
}

greet(age: 23, name: "Udhaya");

Notice:

age: 23
name: "Udhaya"

We changed the order, and it still works. ✅

Important correction

Named parameters are not automatically required.

void greet({String? name}) {
  print(name);
}

greet(); // ✅ allowed

If you use required:

void greet({required String name}) {
  print(name);
}

greet(); // ❌ error

🧠 Remember:

Positional → position/order matters
Named → name matters, order doesn't
required → must provide it

Optional positional []

Order/position still matters.

void greet(String name, [int? age]) {
  print(name);
  print(age);
}

greet("Udhaya");       // age omitted
greet("Udhaya", 23);   // age provided
Optional named {}

You pass them by name.

void greet(String name, {int? age}) {
  print(name);
  print(age);
}

greet("Udhaya");            // age omitted
greet("Udhaya", age: 23);   // age provided

🧠 Easy memory:

[] → optional + position
{} → optional + name

And if you write:

{required int age}

then it's a named parameter that is mandatory.


A default parameter value means:

If the caller doesn't provide a value, the function automatically uses the default value.

Example:

void greet(String name, {String city = "Coimbatore"}) {
  print("$name from $city");
}

If you don't provide city:

greet("Udhaya");
// Udhaya from Coimbatore

If you provide it:

greet("Udhaya", city: "Bangalore");
// Udhaya from Bangalore

So:

Value provided → use provided value
Value not provided → use default value

One important point

Default values are normally used with optional parameters:

[int age = 23]       // optional positional
{int age = 23}       // optional named

Don't worry about memorizing the syntax yet. Just remember the concept.

An anonymous function is a function without a name, usually used for a small piece of logic.

It is also commonly called a lambda function. In Dart, anonymous functions can also form closures when they capture variables from their surrounding scope.

Example:

var numbers = [1, 2, 3];

numbers.forEach((number) {
  print(number);
});

Here:

(number) {
  print(number);
}

is an anonymous function because it has no function name.

Short interview answer

An anonymous function is a function without a name, generally used for a small piece of logic, especially as a callback.

🧠 Remember:

Anonymous → no name
Lambda → anonymous function
Callback → function passed to another function

Anonymous function

A function without a name.

var greet = () {
  print("Hello");
};
Lambda

In Dart, people commonly use lambda to refer to an anonymous function, especially a short one:

var greet = () => print("Hello");

So:

Anonymous function ≈ lambda ✅

Closure

A closure is a function that can remember/access variables from its surrounding scope, even after that surrounding function has finished.

Function counter() {
  int count = 0;

  return () {
    count++;
    print(count);
  };
}

Here the anonymous function captures count. That's what makes it a closure.

🧠 For your interview:

Anonymous function → function without a name
Lambda → commonly used term for an anonymous function
Closure → function that captures variables from its surrounding scope

So your note was close, but don't say “closure = anonymous function”. A closure is about capturing/remembering surrounding variables.

 */