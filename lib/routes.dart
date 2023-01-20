import 'package:go_router/go_router.dart';
import 'package:noucav/Auth/presentation/login_screen.dart';
import 'package:noucav/home/presentation/home_screen.dart';

final routes = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => LoginScreen(),
    ),
    GoRoute(path: '/home', builder: (context, state) => const HomeScreen()),
  ],
);
