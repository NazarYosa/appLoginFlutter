import 'package:flutter/material.dart';
import 'dashboard_page.dart';
import 'login_page.dart';
import 'signup_page.dart';
import 'about_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'appuas',
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/signup': (context) => SignUpPage(),
        '/dashboard': (context) => DashboardPage(),
        '/about': (context) => AboutPage(),
      },
    );
  }
}
