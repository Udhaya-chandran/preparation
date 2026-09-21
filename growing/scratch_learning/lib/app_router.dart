import 'package:go_router/go_router.dart';
import 'package:scratch_learning/counter.dart';
import 'package:scratch_learning/login.dart';

class AppRouter {
  static const String counter = '/';
  static const String login = '/login';

  static final GoRouter router = GoRouter(
    initialLocation: counter,
    routes: [
      GoRoute(path: counter, builder: (context, state) => Counter()),
      GoRoute(path: login, builder: (context, state) => Login()),
    ],
  );
}
