import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jaguar_app/theme/theme.dart';
import 'screens/login.dart';
import 'screens/sign_up.dart';
import 'screens/home.dart';

// Define the router outside the main function
final GoRouter _router = GoRouter(
  initialLocation: '/login',
  routes: [
    GoRoute(
      path: '/login',
      builder: (context, state) => LoginPage(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => HomePage(),
    ),
    GoRoute(
      path: '/signup',
      builder: (context, state) => SignUpPage(),
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
      themeMode: ThemeMode.system,
      theme: TAppTheme.darkTheme,
      darkTheme: TAppTheme.lightTheme,
      routerConfig: _router,
      title: 'Jaguar App',
    );
  }
}
