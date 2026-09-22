import 'package:flutter/material.dart';

class CounterTask extends StatefulWidget {
  const CounterTask({super.key});

  @override
  State<CounterTask> createState() => _CounterTaskState();
}

class _CounterTaskState extends State<CounterTask> {
  //State belongs to the State object, and setState() tells Flutter to rebuild the UI after that state changes.
  /* 

1. count is now outside build()
class _counterTaskState extends State<counterTask> {
  int count = 0;

This is the important correction.

State object stays alive across rebuilds, so count also stays alive.

Earlier you had:

Widget build(BuildContext context) {
  int count = 0;

Every time build() ran, Flutter created a new local count with value 0.

Now:

State object
   │
   └── count = 0

setState() causes build() to run again, but the same State object remains, so count keeps its value.
 */

  // -----------------------------
  // STATE
  // -----------------------------
  int count = 0;
  String textDisplay = '';
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool obscurePassword = true;

  // -----------------------------
  // FUNCTIONS
  // -----------------------------

  void increment() {
    count++;
  }

  void togglePassword() {
    obscurePassword = !obscurePassword;
  }

  void submitName() {
    textDisplay = nameController.text;
  }

  // -----------------------------
  // LIFECYCLE
  // -----------------------------

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  // -----------------------------
  // UI
  // -----------------------------
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Practical Screen'), centerTitle: true),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                // =============================
                // COUNTER SECTION
                // =============================
                const Text(
                  'Counter',
                  style: TextStyle(fontSize: 20, fontWeight: .bold),
                ),
                const SizedBox(height: 16),
                Center(
                  child: Text(
                    count.toString(),
                    style: const TextStyle(fontSize: 32, fontWeight: .bold),
                  ),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      increment();
                    });
                  },
                  child: const Text('Increment'),
                ),
                const SizedBox(height: 32),
                // =============================
                // NAME SECTION
                // =============================
                const Text(
                  'Name',
                  style: TextStyle(fontSize: 20, fontWeight: .bold),
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    labelText: 'Enter your name',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      submitName();
                    });
                  },
                  child: const Text('Submit Name'),
                ),
                const SizedBox(height: 16),
                Text(
                  'Hello $textDisplay,',
                  textAlign: .center,
                  style: const TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 32),
                // =============================
                // PASSWORD SECTION
                // =============================
                const Text(
                  'Password',
                  style: TextStyle(fontSize: 20, fontWeight: .bold),
                ),
                const SizedBox(height: 16),

                TextField(
                  controller: passwordController,
                  obscureText: obscurePassword,
                  decoration: InputDecoration(
                    labelText: 'Enter your password',
                    border: const OutlineInputBorder(),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          togglePassword();
                        });
                      },
                      icon: Icon(
                        obscurePassword
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/*

“If any changes, it rebuilds the particular widget.”

More precisely, setState() marks that State/Element as dirty and schedules its build() to run again. The rebuild then proceeds through the affected subtree; Flutter can skip clean parts and optimize unchanged descendants.

So your mental model should be:

User taps button
      ↓
setState()
      ↓
State is marked dirty
      ↓
build() runs again
      ↓
New Widget descriptions
      ↓
Element tree matches/reuses Elements
      ↓
Only necessary parts continue through the update
      ↓
RenderObjects handle layout/painting

And yes, Flutter does not rebuild the entire app from scratch every time you call setState(). The framework is designed to make rebuilding efficient, and Flutter specifically recommends keeping setState() close to the part of the tree whose UI actually changes.

One interview-quality correction to your wording

Instead of:

“Element tree checks all values and rebuilds the particular widget.”

Say:

“When setState() is called, Flutter marks the associated element as dirty and schedules it for rebuilding. During the build phase, Flutter compares the new widget configuration with the existing element tree and reuses elements where possible.”

That's a strong answer. 👌

One important distinction

Don't think:

setState()
   ↓
only ONE widget rebuilds

Think:

setState()
   ↓
the StatefulWidget's build runs
   ↓
its affected descendant subtree may be rebuilt
   ↓
Flutter optimizes unchanged parts

Flutter's documentation notes that calling setState() causes the widget's build() to run and descendant widgets can be rebuilt, which is why keeping state local is useful for performance.
  */