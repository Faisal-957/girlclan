import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:girlsclan/core/constant/text_style.dart';
import 'package:girlsclan/core/constant/widgets/custom_textfoamfield.dart';
import 'package:girlsclan/ui/screens/auth_screens/signup_screen.dart';
import 'package:girlsclan/ui/screens/home.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final FirebaseAuth auth = FirebaseAuth.instance;

  void login() async {
    try {
      await auth.signInWithEmailAndPassword(
        email: email.text.trim(),
        password: password.text.trim(),
      );
      Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
    } catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar((SnackBar(content: Text("Wrong password"))));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("loginScreen", style: style24),
            20.verticalSpace,
            TextFormField(
              controller: email,
              decoration: authdecoration.copyWith(hintText: "email"),
            ),
            20.verticalSpace,
            TextFormField(
              controller: password,
              decoration: authdecoration.copyWith(hintText: "Password"),
            ),
            ElevatedButton(
              onPressed: () {
                login();
              },
              child: Text("login"),
            ),
            Row(
              children: [
                Text("you dont have a account?"),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
                    );
                  },
                  child: Text("signup"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
