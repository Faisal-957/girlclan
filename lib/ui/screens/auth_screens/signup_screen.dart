import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:girlsclan/core/constant/widgets/custom_button.dart';
import 'package:girlsclan/core/constant/widgets/custom_textfoamfield.dart';
import 'package:girlsclan/ui/screens/home.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  FirebaseAuth auth = FirebaseAuth.instance;
  bool loading = false;

  void signup() async {
    if (email.text.isEmpty || password.text.isEmpty) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text("Please fill all fields")));
      return;
    }

    setState(() {
      loading = true;
    });

    try {
      await auth.createUserWithEmailAndPassword(
        email: email.text.trim(),
        password: password.text.trim(),
      );

      print("✅ Signup Success");

      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text("Signup Successful")));

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Home()),
      );
    } on FirebaseAuthException catch (e) {
      print("❌ ERROR: ${e.code}");

      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(e.message ?? "Signup Failed")));
    } catch (e) {
      print("❌ ERROR: $e");
    } finally {
      setState(() {
        loading = false;
      });
    }
  }

  @override
  void dispose() {
    name.dispose();
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        // ✅ overflow fix
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: name,
                decoration: authdecoration.copyWith(hintText: "Name"),
              ),
              10.verticalSpace,

              TextFormField(
                controller: email,
                keyboardType: TextInputType.emailAddress, // ✅ fix
                decoration: authdecoration.copyWith(hintText: "Email"),
              ),
              10.verticalSpace,

              TextFormField(
                controller: password,
                obscureText: true, // ✅ important
                decoration: authdecoration.copyWith(hintText: "Password"),
              ),
              20.verticalSpace,

              Custom_button(
                color: Colors.blue,
                height: 50,
                title: loading ? "Loading..." : "Signup",
                witdh: 200,
                onTap: loading ? () {} : signup, // ✅ prevent multiple clicks
              ),
            ],
          ),
        ),
      ),
    );
  }
}
