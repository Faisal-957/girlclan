import 'package:flutter/material.dart';
import 'package:girlsclan/core/constant/assets.dart';
import 'package:girlsclan/main.dart';
import 'package:girlsclan/ui/screens/auth_screens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        // ignore: use_build_context_synchronously
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset('$staticAssets/splash.png', fit: BoxFit.cover),
    );
  }
}
