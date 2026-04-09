import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:girlsclan/core/constant/assets.dart';
import 'package:girlsclan/core/constant/text_style.dart';
import 'package:girlsclan/core/constant/widgets/custom_button.dart';
import 'package:girlsclan/core/constant/widgets/custom_textfoamfield.dart';
import 'package:girlsclan/ui/screens/auth_screens/signup_screen.dart';
import 'package:girlsclan/ui/screens/home.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final email = TextEditingController();
  final password = TextEditingController();
  final auth = FirebaseAuth.instance;

  void login() async {
    try {
      await auth.signInWithEmailAndPassword(
        email: email.text.trim(),
        password: password.text.trim(),
      );
      Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));

      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Login Successful")));
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(e.message ?? "Error"),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("$staticAssets/login.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Image.asset("$staticAssets/logo.png", scale: 5),
                  ),
                  20.verticalSpace,
                  Center(
                    child: Text(
                      "Login",
                      style: style24.copyWith(color: Colors.white),
                    ),
                  ),
                  20.verticalSpace,

                  Text(
                    "Email Address",
                    style: style24.copyWith(color: Colors.white, fontSize: 16),
                  ),
                  TextFormField(
                    controller: email,

                    decoration: authdecoration.copyWith(
                      hintText: "Email ",
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                  10.verticalSpace,
                  Text(
                    "Password",
                    style: style24.copyWith(color: Colors.white, fontSize: 16),
                  ),
                  TextFormField(
                    controller: password,
                    decoration: authdecoration.copyWith(
                      hintText: "Password",
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                  10.verticalSpace,
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      "Forgot Password",
                      style: style24.copyWith(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  10.verticalSpace,
                  Custom_button(
                    color: Color(0xff119DA4),
                    height: 50,
                    title: "Login",
                    witdh: 250,
                    onTap: () {
                      login();
                    },
                  ),
                  10.verticalSpace,
                  Row(
                    children: [
                      Text(
                        "Don’t have an account? ",
                        style: style24.copyWith(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignupScreen(),
                            ),
                          );
                        },
                        child: Text(
                          "Sign up",
                          style: style24.copyWith(
                            color: Colors.red,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
