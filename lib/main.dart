import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:girlsclan/free.dart';
import 'package:girlsclan/ui/screens/auth_screens/login_screen.dart';
import 'package:girlsclan/ui/screens/auth_screens/signup_screen.dart';
import 'package:girlsclan/ui/screens/home.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(scaffoldBackgroundColor: Colors.white),
          debugShowCheckedModeBanner: false,
          home: Home(),
        );
      },
    );
  }
}
