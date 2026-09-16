/* 

Operator	Meaning	Example	Result
+	Addition	10 + 5	15
-	Subtraction	10 - 5	5
*	Multiplication	10 * 5	50
/	Division	10 / 5	2.0
%	Remainder	10 % 3	1



Important: /

In Dart:

print(10 / 5);

Output:

2.0

Division / produces a double.

% is important
print(10 % 3);

10 ÷ 3 gives remainder 1.

So:

10 % 3 = 1

This is commonly used to check even/odd:

10 % 2 == 0  // even
11 % 2 == 0  // false → odd

*/

//comparison operators

/* 

sed to compare two values.

10 > 5    // true
10 < 5    // false
10 >= 10  // true
10 <= 9   // false
10 == 10  // true
10 != 5   // true

The result is always a bool: true or false.

Meanings
>   greater than
<   less than
>=  greater than or equal to
<=  less than or equal to
==  equal to
!=  not equal to

⚠️ One very important interview point:

=   // assignment
==  // comparison

Example:

int age = 23;     // assign 23
age == 23         // ask: is age equal to 23?

   */

//Logical operators

/* These are very important in Flutter because you'll use them in login validation, permissions, conditions, API responses, etc.

There are 3 main ones:

&&   AND
||   OR
!    NOT


&& — AND
Both conditions must be true.

age > 18 && age < 30

If age is 23:

true && true → true

If even one is false:

true && false → false
|| — OR

At least one condition must be true.

age < 18 || age > 60

For age 23:

false || false → false
! — NOT

It reverses true ↔ false.

!true   // false
!false  // true

⚠️ Don't confuse this ! with the null assertion operator we learned earlier.

The meaning depends on where it's used:

name!.length   // null assertion
!isLoggedIn    // NOT

 */

/* 
Assignment operators

You've already used:

int age = 23;

Here = means assign.

Dart also provides shortcuts:

age += 5;  // age = age + 5
age -= 5;  // age = age - 5
age *= 5;  // age = age * 5
age /= 5;  // age = age / 5

For example:

int age = 23;

age += 2;

print(age);

Output:

25

Because:

23 + 2 = 25

  */

/*
  
  Increment & decrement

These are very common:

number++; // increase by 1
number--; // decrease by 1

Example:

int number = 10;

number++;

print(number);

Output:

11

And:

number--;

makes it 10 again.
  
  
   */

/* Now the important part: number++ vs ++number

Both increase by 1, but when the value is used, the timing is different.

int number = 10;

print(number++); // 10
print(number);   // 11

number++ means:

Use the old value first, then increase.

But:

int number = 10;

print(++number); // 11
print(number);   // 11

++number means:

Increase first, then use the new value.

🧠 Easy memory
number++  → use → increase
++number  → increase → use

 */

void main() {
  //arthimatic
  print(10 + 5);
  print(10 - 5);
  print(10 * 5);
  print(10 / 5);
  print(10 % 3);

  //comparision

  int age = 23;

  print(age > 18);
  print(age < 18);
  print(age == 23);
  print(age != 23);

  //logical
  int ages = 23;

  print(ages > 18 && ages < 30);
  print(ages < 18 || ages > 60);
  print(!(ages == 23));

  //Assignment operators
  int salary = 25000;

  salary += 5000;
  salary -= 2000;

  print(salary);

  int number = 10;

  number *= 3;
  number += 5;
  number -= 10;

  print(number);

  //Increment & decrement

  int numbers = 10;

  numbers++;
  numbers++;
  numbers--;

  print(numbers);

  int num = 10;

  print(num++); // 10
  print(num); // 11

  int numb = 10;

  print(++numb); // 11
  print(numb); // 11

  /*number++  → use first, increase later
++number  → increase first, use later

number--  → use first, decrease later
--number  → decrease first, use later */


}
