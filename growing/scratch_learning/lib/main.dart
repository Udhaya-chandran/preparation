import 'package:flutter/material.dart';
import 'package:scratch_learning/app_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'ScratchLearning',
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
    );
  }
}
