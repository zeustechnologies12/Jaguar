import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'screens/login.dart';
import 'screens/sign_up.dart';
import 'screens/home.dart';
import 'screens/chat.dart';
import 'screens/my_booking.dart';
import 'screens/my_account.dart';
import 'screens/about.dart';

// Define the router outside the main function
final GoRouter _router = GoRouter(
  initialLocation: '/login',
  routes: [
    GoRoute(
      path: '/login',
      builder: (context, state) => LoginPage(),
    ),
    GoRoute(
      path: '/signup',
      builder: (context, state) => SignUpPage(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => HomePage(),
    ),
    GoRoute(
      path: '/chat',
      builder: (context, state) => ChatPage(),
    ),
    GoRoute(
      path: '/my_bookings',
      builder: (context, state) => MyBookingsPage(),
    ),
    GoRoute(
      path: '/my_account',
      builder: (context, state) => MyAccountPage(),
    ),
    GoRoute(
      path: '/about',
      builder: (context, state) => AboutPage(),
    ),
  ],
);

void main() {
  //usePathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      title: 'Jaguar App',
    );
  }
}
