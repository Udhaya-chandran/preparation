/* OOP (Object-Oriented Programming) is a programming paradigm based on objects, where objects contain data (properties) and behavior (methods).

4 pillars of OOP
Encapsulation → bundling data and methods together and controlling access.
Abstraction → hiding unnecessary implementation details and exposing essential functionality.
Inheritance → creating a new class based on an existing class and reusing/extending its properties and methods.
Polymorphism → one interface/name can have different implementations or behaviors.

🧠 Memory:

E A I P
Encapsulation → Abstraction → Inheritance → Polymorphism

Class

A class is a blueprint/template that defines the properties and methods an object can have.

class Car {
  String brand = "Toyota";

  void drive() {
    print("Car is driving");
  }
}
Object

An object is an instance of a class created from that blueprint.

var car = Car();

print(car.brand);
car.drive();

Think of it like:

Class → Blueprint 📝
Object → Actual thing created from blueprint 🚗

Interview answer

A class is a blueprint that defines the properties and behavior of an object. An object is an instance of that class.


Property / Field

A property (field) is a variable inside a class that stores the object's data/state.

class Car {
  String brand = "Toyota";
  int speed = 100;
}

Here:

brand → property
speed → property

An object can have its own values:

var car = Car();

print(car.brand);
print(car.speed);
Method

A method is a function inside a class that defines what the object can do.

class Car {
  String brand = "Toyota";

  void drive() {
    print("Car is driving");
  }
}

Here:

brand → property/data
drive() → method/behavior

Then:

var car = Car();

car.drive();
🧠 Simple memory

Property → what the object HAS
Method → what the object DOES

For a Car:

Car
├── brand     → HAS
├── speed     → HAS
└── drive()   → DOES





A constructor is a special function that is automatically called when an object is created. It is used to initialize the object's fields/properties.

Example:

class Car {
  String brand;
  int speed;

  Car(this.brand, this.speed);
}

var car = Car("Toyota", 100);

print(car.brand); // Toyota
print(car.speed); // 100

Here:

Car("Toyota", 100)
      ↓
constructor called
      ↓
brand = Toyota
speed = 100

🧠 Remember:

Object created → Constructor called → Fields initialized

And notice something important: the constructor has the same name as the class:

Car(...)

Default constructor

A default constructor is a constructor with no parameters.

class Car {
  String brand = "Toyota";

  Car(); // default constructor
}

var car = Car();

If you don't write any constructor, Dart can provide an implicit default constructor (when applicable).

2. Parameterized constructor

A parameterized constructor accepts values when creating the object.

class Car {
  String brand;
  int speed;

  Car(this.brand, this.speed);
}

var car = Car("Toyota", 100);

Here "Toyota" and 100 are passed into the constructor.

🧠 Easy memory:

Default → no parameters
Parameterized → has parameters

About what you remembered:

default, named, factory

Yes, these are different types/forms of constructors in Dart, but don't mix them with the parameter/no-parameter classification.

For now, remember these separately:

Default / unnamed constructor
Named constructor
Factory constructor

Named constructor

A named constructor gives a class another constructor name so you can create objects in different ways.

class User {
  String name;

  User(this.name);

  User.guest() {
    name = "Guest";
  }
}

Now we have two constructors:

var user1 = User("Udhaya");  // normal constructor

var user2 = User.guest();    // named constructor

The important part is:

User.guest()
     ↑
  named constructor
Why use it?

When you want different ways to create the same type of object.

For example:

class User {
  String name;

  User(this.name);

  User.guest() : name = "Guest";

  User.admin() : name = "Admin";
}

Now:

User("Udhaya");
User.guest();
User.admin();

🧠 Remember:

User(...) → normal/unnamed constructor
User.guest() → named constructor
User.admin() → another named constructor

And required is separate. It means a particular parameter must be supplied:

User({required this.name});

Factory constructor

A factory constructor is used when creating an object may require some logic before deciding what object to return.

It doesn't have to create a new object every time.

A common API example:

class User {
  String name;
  int age;

  User(this.name, this.age);

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      json["name"],
      json["age"],
    );
  }
}

When API data comes:

var user = User.fromJson(jsonData);

So your statement:

“Factory is used for API fromJson()”

✅ Very common and correct in Flutter, but remember:

Factory → can contain logic and return an object, without requiring a new instance every time.

Why factory for fromJson()?

Because the JSON data needs to be processed/mapped before creating the User object.

API JSON
   ↓
fromJson()
   ↓
User object

🧠 For interview:

A factory constructor can return an instance of a class and is useful when object creation requires logic or when we may want to return an existing/different instance.

Don't worry if the full factory concept isn't crystal clear yet. fromJson() is enough as your first practical connection.

 */