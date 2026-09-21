import 'package:flutter/material.dart';

class counterTask extends StatefulWidget {
  const counterTask({super.key});

  @override
  State<counterTask> createState() => _counterTaskState();
}

class _counterTaskState extends State<counterTask> {
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
  int count = 0;
  String textDisplay = '';
  TextEditingController input = TextEditingController();
  void increment() {
    count++;
  }

  @override
  void dispose() {
    input.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter'), centerTitle: true),
      body: Column(
        children: [
          Text(count.toString()),
          SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              setState(() {
                increment();
              });
            },
            child: Text('Increment'),
          ),
          SizedBox(height: 50),
          TextField(
            controller: input,
            decoration: InputDecoration(labelText: 'Enter your name'),
          ),
          SizedBox(height: 50),
          Text('You enterd input $textDisplay'),
          SizedBox(height: 50),
          ElevatedButton(
            onPressed: () {
              setState(() {
                textDisplay = input.text;
              });
            },
            child: Text('Submit'),
          ),
        ],
      ),
    );
  }
}
