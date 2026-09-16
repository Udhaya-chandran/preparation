/* 

if

if is used when you want to execute code only when a condition is true.

void main() {
  int age = 23;

  if (age >= 18) {
    print("Adult");
  }
}

Here:

age >= 18
23 >= 18
true

So "Adult" gets printed.

Structure
if (condition) {
  // code runs when condition is true
}
2. if / else

What if the condition is false?

Use else.

void main() {
  int age = 15;

  if (age >= 18) {
    print("Adult");
  } else {
    print("Minor");
  }
}

Since 15 >= 18 is false:

Minor
🧠 Remember
if    → condition true → execute this
else  → condition false → execute this

 */

/* 
else if

Use else if when you have multiple conditions.

Example:

void main() {
  int age = 23;

  if (age < 13) {
    print("Child");
  } else if (age < 18) {
    print("Teenager");
  } else {
    print("Adult");
  }
}

Dart checks from top to bottom:

age < 13 → false
age < 18 → false
else      → Adult
🧠 Structure
if (condition1) {
  
} else if (condition2) {
  
} else {
  
}

Only the first matching condition executes.

 */

void main() {
  int age = 20;

  if (age >= 18) {
    print("Adult");
  } else {
    print("Minor");
  }

  //task

  /* 90 or above → A
75–89       → B
50–74       → C
below 50    → Fail */
  int mark = 49;

  if (mark >= 90) {
    print('A');
  } else if (mark <= 89 && mark >= 75) {
    print('B');
  } else if (mark <= 74 && mark >= 50) {
    print('C');
  } else {
    print('D');
  }

  /* One improvement

You don't actually need the upper limits (<= 89, <= 74) because else if is already checked only after the previous condition fails.

You can simplify it:

int mark = 49;

if (mark >= 90) {
  print('A');
} else if (mark >= 75) {
  print('B');
} else if (mark >= 50) {
  print('C');
} else {
  print('Fail');
} */

  //task 2
  /* age < 13       → Child
13–17          → Teenager
18–59          → Adult
60 or above    → Senior
*/
  int vayasu = 12;
  if (vayasu >= 60) {
    print('Senior');
  } else if (vayasu >= 18) {
    print('adult');
  } else if (vayasu >= 13) {
    print('Teen');
  } else {
    print('child');
  }

  /* temperature >= 35 → Very Hot
temperature >= 25 → Hot
temperature >= 15 → Normal
below 15          → Cold */

  double temp = 22.5;
  if (temp >= 35) {
    print('Very hot');
  } else if (temp >= 25) {
    print('hot');
  } else if (temp >= 15) {
    print('normal');
  } else {
    print('cold');
  }

  String day = "Monday";

  switch (day) {
    case "Monday":
      print('Start of the week');
      break;
    case "Friday":
      print("weekend comming");
      break;
    default:
      print('normal day');
  }

  /* How Dart checks it
day = "Monday"

switch(day)
     ↓
case "Monday" → MATCH ✅
     ↓
print("Start of week")

default is used when none of the cases match.

Important words
switch → value we are checking
case   → possible value
break  → stop the switch
default → nothing matched */

/*

One important difference

With if:

if (fruit == "Apple") {

You're writing a condition.

With switch:

switch (fruit) {
  case "Apple":

You're matching the value against a specific case.

So switch is especially nice when you have many fixed choices.
 */
//💡 Remember: case matches the exact value, and break stops the switch.
}
