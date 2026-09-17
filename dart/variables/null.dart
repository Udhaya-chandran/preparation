void main() {
  //String name = null; //so we use Dart uses ?: so now name can contain String OR null
  String? name = null;
  //example :
  String? city;
  city = 'covai';
  city = null;

  //This ? is called a nullable type.
  print(name);

  print(
    city?.length,
  ); //It is called the null-aware access operator (also commonly called the null-shorting operator).

  // null assertion operator
  print(
    city!.length,
  ); // Here ! tells Dart: "I guarantee this is NOT null. Let me access it.But it is null, so the app crashes at runtime."

  /*   
 
  String       → cannot be null
String?      → can be null
?.           → null-aware access
!            → null assertion
if (x != null) → check before using


? → nullable — value can be null

String? name;

! → null assertion operator — you're telling Dart:

“I am sure this value is NOT null.”

String? name = "Udhaya";
print(name!);

⚠️ If you're wrong and name is actually null, it can cause a runtime error.

🧠 Simple memory:

? → Maybe null
! → Definitely not null (I promise 😅)
  */
}
