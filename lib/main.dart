import 'package:flutter/material.dart';
import 'package:modern_ui_login/home_page.dart';
import 'package:modern_ui_login/login_page.dart';
import 'package:modern_ui_login/register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      routes: {
        
        '/registerpage': (context) => RegisterPage(),
        '/homepage': (context) => HomePage(),
      },
    );
  }
}
