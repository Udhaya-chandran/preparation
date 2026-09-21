import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:scratch_learning/app_router.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  // final TextEditingController counter = TextEditingController();
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter'), centerTitle: true),
      body: Column(
        children: [
          Text(count.toString()),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: .center,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    count = count - 1;
                  });
                },
                child: Text('-'),
              ),
              VerticalDivider(),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    count = count + 1;
                  });
                },
                child: Text('+'),
              ),
            ],
          ),

          const SizedBox(height: 30),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    context.go(AppRouter.login);
                  });
                },
                child: Text('Login'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
