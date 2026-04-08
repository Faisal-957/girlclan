import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:girlsclan/core/constant/assets.dart';
import 'package:girlsclan/core/constant/text_style.dart';
import 'package:girlsclan/core/constant/widgets/custom_button.dart';
import 'package:girlsclan/core/constant/widgets/custom_textfoamfield.dart';
import 'package:girlsclan/ui/screens/auth_screens/login_screen.dart';
import 'package:girlsclan/ui/screens/home.dart';

class SignupScreen extends StatefulWidget {
  SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final firstnameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final phonenumberController = TextEditingController();
  final FirebaseAuth auth = FirebaseAuth.instance;
  bool isLoading = false;
  bool isChecked = false;

  void signup() async {
    setState(() => isLoading = true);

    try {
      await auth.createUserWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
      Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));

      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Signup Successful")));
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(e.message ?? "Error"),
          backgroundColor: Colors.red,
        ),
      );
    } finally {
      setState(() => isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: Image.asset("$staticAssets/logo.png", scale: 4)),
                Center(child: Text("Signup", style: style24)),
                20.verticalSpace,
                Text("First Name"),
                TextFormField(
                  controller: firstnameController,
                  decoration: authdecoration.copyWith(hintText: "First name "),
                ),
                Text("Email"),
                TextFormField(
                  controller: emailController,
                  decoration: authdecoration.copyWith(hintText: "Email "),
                ),
                Text("Password"),
                TextFormField(
                  controller: passwordController,
                  decoration: authdecoration.copyWith(hintText: "Password"),
                ),

                Text("Phone Number"),
                TextFormField(
                  controller: phonenumberController,
                  decoration: authdecoration.copyWith(hintText: "Phone Number"),
                ),
                Row(
                  children: [
                    Checkbox(
                      activeColor: Colors.black,
                      value: isChecked,
                      onChanged: (value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                    Text("Check if you are female."),
                  ],
                ),
                isLoading
                    ? CircularProgressIndicator()
                    : Custom_button(
                        color: Color(0xff119DA4),
                        height: 50,
                        title: "signup",
                        witdh: 250,
                        onTap: () {
                          signup();
                        },
                      ),

                Row(
                  children: [
                    Text("Already have an account? "),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ),
                        );
                      },
                      child: Text("Login", style: TextStyle(color: Colors.red)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:girlsclan/ui/screens/home.dart';

// class SignupPage extends StatefulWidget {
//   const SignupPage({super.key});

//   @override
//   State<SignupPage> createState() => _SignupPageState();
// }

// class _SignupPageState extends State<SignupPage> {
//   final emailController = TextEditingController();
//   final passwordController = TextEditingController();

//   final FirebaseAuth auth = FirebaseAuth.instance;

//   bool isLoading = false;

//   void signup() async {
//     setState(() => isLoading = true);

//     try {
//       await auth.createUserWithEmailAndPassword(
//         email: emailController.text.trim(),
//         password: passwordController.text.trim(),
//       );
//       Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));

//       ScaffoldMessenger.of(
//         context,
//       ).showSnackBar(SnackBar(content: Text("Signup Successful")));
//     } on FirebaseAuthException catch (e) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(
//           content: Text(e.message ?? "Error"),
//           backgroundColor: Colors.red,
//         ),
//       );
//     } finally {
//       setState(() => isLoading = false);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Signup")),
//       body: Padding(
//         padding: const EdgeInsets.all(20),
//         child: Column(
//           children: [
//             TextField(
//               controller: emailController,
//               decoration: InputDecoration(
//                 labelText: "Email",
//                 border: OutlineInputBorder(),
//               ),
//             ),

//             SizedBox(height: 15),

//             TextField(
//               controller: passwordController,
//               obscureText: true,
//               decoration: InputDecoration(
//                 labelText: "Password",
//                 border: OutlineInputBorder(),
//               ),
//             ),

//             SizedBox(height: 20),

//             isLoading
//                 ? CircularProgressIndicator()
//                 : SizedBox(
//                     width: double.infinity,
//                     child: ElevatedButton(
//                       onPressed: signup,
//                       child: Text("Signup"),
//                     ),
//                   ),
//           ],
//         ),
//       ),
//     );
//   }
// }
