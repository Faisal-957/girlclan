import 'package:flutter/material.dart';
import 'package:girlsclan/ui/screens/auth_screens/login_screen.dart';
import 'package:girlsclan/ui/screens/splash_screen.dart';
import 'package:girlsclan/ui/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: LoginScreen());
  }
}
