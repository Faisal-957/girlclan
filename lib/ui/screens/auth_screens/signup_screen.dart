import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:girlsclan/ui/screens/home.dart';

class SignupScreen extends StatefulWidget {
  SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

// moved into state class to access `context`

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final FirebaseAuth auth = FirebaseAuth.instance;

  void signup() async {
    await auth.createUserWithEmailAndPassword(
      email: email.text.trim(),
      password: password.text.trim(),
    );

    Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(23),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: email,
              decoration: InputDecoration(hintText: "email"),
            ),
            TextFormField(
              controller: password,
              decoration: InputDecoration(hintText: "password"),
            ),
            ElevatedButton(onPressed: signup, child: Text("signup")),
          ],
        ),
      ),
    );
  }
}
