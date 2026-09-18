/* 
nheritance

Inheritance allows a child class to reuse and extend the properties and methods of a parent class using the extends keyword.

Example:

class Animal {
  void eat() {
    print("Animal is eating");
  }
}

class Dog extends Animal {
  void bark() {
    print("Dog is barking");
  }
}

void main() {
  var dog = Dog();

  dog.eat();   // inherited from Animal
  dog.bark();  // Dog's own method
}
About super

super is used to access the parent class's constructor, methods, or properties.

class Animal {
  Animal(String name) {
    print(name);
  }
}

class Dog extends Animal {
  Dog() : super("Dog");
}

So your interview answer can be:

Inheritance is a feature of OOP where a child class reuses and extends the properties and methods of a parent class using the extends keyword. We can use super to access the parent class constructor or members.

🧠 Memory:
extends → child gets parent features
super → access parent features

Encapsulation

Your answer can be:

Encapsulation is the process of bundling data (properties) and the methods that operate on that data into a single unit, usually a class. It also helps control access to the data from outside the class using access control, getters, and setters.

In Dart, private members are commonly written with _:

class BankAccount {
  double _balance = 0;

  double get balance => _balance;

  set balance(double amount) {
    if (amount >= 0) {
      _balance = amount;
    }
  }
}

Here:

_balance → private
get balance → getter to read
set balance → setter to modify with control

🧠 Memory:
Encapsulation = Bundle + Protect + Control Access

One small correction: don't say "private using getter and setter." Private, getter, and setter are separate concepts used together for controlled access.



Abstraction

Polished interview answer:

Abstraction is the process of hiding complex implementation details and showing only the essential features that the user needs.

Your example:

User needs to know how to drive the car 🚗
User doesn't need to know how fuel reaches the engine, how ignition works, or how the engine internally operates.
Those implementation details are hidden.

🧠 Memory:
Abstraction = Hide complexity → Show what is needed

Quick difference to remember
Encapsulation → Protect/control data
Abstraction → Hide implementation complexity

Polymorphism means "many forms". The same method/interface can be used with different objects and produce different behavior.

Simple example:

class Animal {
  void sound() {
    print("Animal sound");
  }
}

class Dog extends Animal {
  @override
  void sound() {
    print("Dog barks");
  }
}

class Cat extends Animal {
  @override
  void sound() {
    print("Cat meows");
  }
}

Here sound() is the same method, but:

Dog → "Dog barks"
Cat → "Cat meows"

That's polymorphism. 🧠

Memory:
Poly = many
Morph = forms
➡️ Same method/interface → different behavior

You now have the 4 pillars: EAIP ✅
Encapsulation → protect/control data
Abstraction → hide complexity
Inheritance → reuse parent features
Polymorphism → same interface, different behavior



Method Overriding

Your answer, polished for interview:

Method overriding is when a child class provides its own implementation of a method that already exists in the parent class, with the same method name and compatible parameters.

Example:

class Animal {
  void sound() {
    print("Animal makes sound");
  }
}

class Dog extends Animal {
  @override
  void sound() {
    print("Dog barks");
  }
}

Here:

Parent has sound()
Child also has sound()
Child replaces/overrides the behavior with its own implementation.
@override tells Dart that we're intentionally overriding the parent method.

🧠 Memory:
Parent method → Child changes its behavior = Overriding

Method Overloading

Your definition is correct:

Method overloading means having the same method name with different parameters.

For example, in languages like Java:

add(int a, int b)
add(int a, int b, int c)

Same method name add, but different number of parameters.

But important Dart point ⚠️

Dart does NOT support traditional method overloading.

You cannot do this:

void add(int a, int b) {}

void add(int a, int b, int c) {} // ❌

Dart would treat them as duplicate declarations.

Instead, Dart commonly uses optional/named parameters:

void add(int a, int b, [int c = 0]) {
  print(a + b + c);
}

🧠 Remember:

Overriding → same method in parent + child, child changes behavior.
Overloading → same method name, different parameters.
Dart → ❌ traditional method overloading not supported.

And yes, your sentence "same method name, different parameters" is the key thing to remember.

super vs this

super → refers to the parent class.

class Animal {
  void sound() {
    print("Animal sound");
  }
}

class Dog extends Animal {
  void show() {
    super.sound(); // calls parent method
  }
}

this → refers to the current object/current class.

It is commonly used when a constructor parameter has the same name as a property:

class User {
  String name;

  User(this.name);
}

Here this.name means the name property of the current object.

You can also write:

class User {
  String name;

  User(String name) {
    this.name = name;
  }
}

🧠 Easy memory:

this → current class/object 👈
super → parent class 👆

And correction: this is not used to call something from outside.


Abstract class

Interview answer:

An abstract class is a special type of class that cannot be instantiated directly. It is mainly used as a blueprint/template for other classes.

Example:

abstract class Animal {
  void sound();
}

class Dog extends Animal {
  @override
  void sound() {
    print("Dog barks");
  }
}

Here:

Animal animal = Animal(); // ❌ Cannot create directly
Dog dog = Dog();          // ✅

The abstract class can contain abstract methods (methods without implementation) and also normal methods.

🧠 Memory:

abstract = blueprint → cannot create object directly → child class implements it


Interface

Your answer polished:

An interface is like a contract that defines what a class must do, but it doesn't define how it should do it.

Simple example:

abstract class Animal {
  void sound();
}

class Dog implements Animal {
  @override
  void sound() {
    print("Dog barks");
  }
}

Here:

Animal says → "You must have sound()."
Dog decides → "This is how I implement sound()."

🧠 Memory:

Interface = Contract → What to do, not how to do it

And don't worry about forgetting today. You've covered a lot of OOP concepts in one session. The fact that you can give the concept after a small hint is exactly what we want to strengthen.

One important Dart point

In Dart, every class can act as an interface. The implements keyword is used to implement a class's interface.
 

extends vs implements

extends → used for inheritance. Child class inherits the parent class's properties and methods.

class Dog extends Animal {
}

implements → used when a class follows the contract/interface of another class. It is commonly used with abstract classes, but it is not only for abstract classes.

abstract class Animal {
  void sound();
}

class Dog implements Animal {
  @override
  void sound() {
    print("Bark");
  }
}

Important difference:

extends → reuse/inherit implementation
implements → must provide its own implementation

🧠 Memory:

extends = "I am a type of this, give me its features."
implements = "I promise to follow this contract."



extends → child can reuse the parent's existing method implementation.
implements → child must provide its own implementation of the methods.

Example:

class Animal {
  void sound() {
    print("Animal sound");
  }
}

class Dog extends Animal {
  // Can directly use sound()
}

With implements:

class Animal {
  void sound() {
    print("Animal sound");
  }
}

class Dog implements Animal {
  @override
  void sound() {
    print("Dog barks");
  }
}

Even though Animal already has sound(), Dog must implement it again when using implements.

🧠 Super simple:

extends → reuse ♻️
implements → contract + implement yourself ✍️

You're doing fine. You remember the concepts; sometimes the exact terminology is slipping because you're learning many things today.


Dart doesn't support multiple class inheritance. A class can extend only one class. Mixins allow us to reuse functionality from multiple mixins using the with keyword.

Example:

mixin Fly {
  void fly() {
    print("Flying");
  }
}

mixin Swim {
  void swim() {
    print("Swimming");
  }
}

class Duck with Fly, Swim {
}

Now:

var duck = Duck();

duck.fly();
duck.swim();

Duck gets functionality from both Fly and Swim.

🧠 Memory:

extends → one parent class
implements → follow a contract
with → reuse multiple mixins

One small correction: a mixin isn't exactly a class being mixed into another class. Think of it as a reusable piece of functionality that can be added to a class.


Mixin vs Abstract class

Your definitions are already partly correct:

Mixin → mainly for reusing functionality.

mixin Fly {
  void fly() {
    print("Flying");
  }
}

mixin Swim {
  void swim() {
    print("Swimming");
  }
}

class Duck with Fly, Swim {}

Duck gets reusable functionality from both mixins.

Abstract class → mainly for defining a blueprint/contract for child classes.

abstract class Animal {
  void sound();
}

class Dog extends Animal {
  @override
  void sound() {
    print("Bark");
  }
}

Animal says: "Every child must have sound()."

🧠 Easy interview memory
Mixin	Abstract class
Reuse functionality	Define blueprint/contract
with	extends
Can use multiple mixins	Can extend only one class
Focus: reuse	Focus: design/contract

So if interviewer asks:

Why use a mixin?

Say: "To reuse common functionality across multiple classes without using multiple inheritance."

Don't worry about remembering every detail today. We're doing retrieval practice, so forgetting and recovering the answer is actually part of the process. 💪




First, your basic understanding is correct:

Variable/property → stores data/state.
Method → function inside a class that performs an action.

Now let's learn static.

static

A static member belongs to the class itself, not to individual objects.

Normally:

class User {
  String name = "Udhaya";
}

void main() {
  var user = User();

  print(user.name);
}

name belongs to each object.

With static:

class User {
  static String company = "ABC";
}

void main() {
  print(User.company);
}

Notice we don't create a User object.

We access it directly using:

User.company

Same idea with a static method:

class Calculator {
  static int add(int a, int b) {
    return a + b;
  }
}

void main() {
  print(Calculator.add(10, 20));
}

No object needed.

🧠 Memory:

Normal → object.member
Static → Class.member

And one important point: static is not about inheritance or abstraction. It simply means the member belongs to the class itself.


staic variabe
A static variable belongs to the class rather than an object, so we can access it directly using the class name without creating an object.

Example:

class User {
  static String company = "ABC";
}

print(User.company); // ✅

No need:

var user = User(); // ❌ not needed

🧠 Static = Class-level → no object needed

Now let's check the method side.


A static method belongs to the class itself, so we can call it using the class name without creating an object.

class Calculator {
  static int add(int a, int b) {
    return a + b;
  }
}

print(Calculator.add(10, 20));

🧠 Memory:

static variable → class-level data
static method → class-level function/action
Both → no object required

Your understanding is good. Don't worry if some of these are new today.



Instance variable — very simple

An instance variable is a normal variable/property that belongs to an object (instance) of a class.

class User {
  String name;
  int age;

  User(this.name, this.age);
}

Here:

var user1 = User("Udhaya", 23);
var user2 = User("Arun", 25);

name and age are instance variables.

Each object has its own copy/value:

user1 → name = Udhaya, age = 23
user2 → name = Arun,   age = 25

Compare with what we just learned:

Instance variable → belongs to object
Static variable   → belongs to class

🧠 Easy memory:

Instance = Object

So don't add "instance variable" as some scary new big concept. It's basically the normal property inside a class that belongs to each object.



Static variable → belongs to the class, can be accessed directly using the class name without creating an object.

Instance variable → belongs to an object/instance, so you need an object to access it.

Example:

class User {
  static String company = "ABC"; // static variable
  String name = "Udhaya";         // instance variable
}

print(User.company);       // ✅ no object needed

var user = User();
print(user.name);          // ✅ object needed

🧠 Memory:

Static → Class
Instance → Object

Nice recovery 😄 You didn't know the term 5 minutes ago, and now you can explain the difference correctly.

@override is an annotation that tells Dart:

"I am intentionally overriding a method that already exists in the parent class."

Example:

class Animal {
  void sound() {
    print("Animal sound");
  }
}

class Dog extends Animal {
  @override
  void sound() {
    print("Dog barks");
  }
}

Here @override tells us that Dog.sound() is replacing the implementation inherited from Animal.

It also helps catch mistakes. For example, if you accidentally write:

@override
void soud() {} // typo

Dart can warn/error because soud() doesn't actually override a parent method.

🧠 Memory:

@override → "I'm intentionally replacing the parent's method."

Next question 👇



Getter provides controlled access for reading a property's value. Setter provides controlled access for modifying a property's value, and can be used for validation. Both are commonly used for encapsulation.

Example:

class BankAccount {
  double _balance = 0;

  // Getter
  double get balance => _balance;

  // Setter
  set balance(double amount) {
    if (amount >= 0) {
      _balance = amount;
    }
  }
}
account.balance → getter → read
account.balance = 500 → setter → modify
Setter can validate before changing the value.

🧠 Memory:

Getter → GET → read 📖
Setter → SET → change ✏️

And yes, this connects directly to encapsulation.

*/
