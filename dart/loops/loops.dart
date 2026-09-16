/* 
Now understand the for loop in 3 parts:

for (int i = 1; i <= 5; i++) {
  print(i);
}
int i = 1 → start at 1
i <= 5 → condition: keep going while true
i++ → increase by 1 after each round

So:

1 → 2 → 3 → 4 → 5 → stop

 */

void main() {
  //for loop
  for (int i = 2; i <= 10; i += 2) {
    print(i);
  }

  for (int i = 1; i <= 5; i++) {
    print(i * 2);
  }

  // while loop
  int i = 1;
  while (i <= 5) {
    print(i);
    i++;
  }

  /* Understand while simply:

i = 1 → start
while (i <= 5) → check condition
print(i) → print value
i++ → increase by 1
Repeat until condition becomes false

So:

1 → 2 → 3 → 4 → 5 → stop

⚠️ Important: In a while loop, don't forget i++ (or another update), otherwise you can create an infinite loop. */


/* 

do-while

Look at this:

int i = 1;

do {
  print(i);
  i++;
} while (i <= 5);


do-while executes the code at least once before checking the condition. ✅


⭐ Remember the difference

while

while (condition) {
  // code
}

➡️ Condition first → then code

do-while

do {
  // code
} while (condition);

➡️ Code first → then condition

 */

int j = 10;

do {
  print(j);
  j++;
} while (j < 5);

}
