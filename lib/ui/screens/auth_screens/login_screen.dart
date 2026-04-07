// // import 'dart:async';

// // import 'package:firebase_auth/firebase_auth.dart';
// // import 'package:flutter/material.dart';
// // import 'package:girlsclan/core/constant/assets.dart';
// // import 'package:girlsclan/core/constant/text_style.dart';
// // import 'package:girlsclan/core/constant/widgets/custom_button.dart';
// // import 'package:girlsclan/ui/screens/home.dart';

// // class LoginScreen extends StatefulWidget {
// //   const LoginScreen({super.key});

// //   @override
// //   State<LoginScreen> createState() => _LoginScreenState();
// // }

// // class _LoginScreenState extends State<LoginScreen> {
// //   final TextEditingController email = TextEditingController();

// //   final TextEditingController pasword = TextEditingController();
// //   final FirebaseAuth _auth = FirebaseAuth.instance;

// //   void login() async {
// //     try {
// //       await _auth.signInWithEmailAndPassword(
// //         email: email.text.trim(),
// //         password: pasword.text.trim(),
// //       );

// //       ScaffoldMessenger.of(
// //         context,
// //       ).showSnackBar(SnackBar(content: Text("Login Successful!")));

// //       // 👉 Yahan apni HomeScreen lagao
// //       // Navigator.push(context, MaterialPageRoute(builder: (_) => HomeScreen()));
// //     } on FirebaseAuthException catch (e) {
// //       ScaffoldMessenger.of(
// //         context,
// //       ).showSnackBar(SnackBar(content: Text(e.message ?? "Login failed")));
// //     }
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       resizeToAvoidBottomInset: false,
// //       body: Container(
// //         height: double.infinity,
// //         width: double.infinity,
// //         decoration: BoxDecoration(
// //           image: DecorationImage(
// //             image: AssetImage("$staticAssets/login.png"),
// //             fit: BoxFit.cover,
// //           ),
// //         ),

// //         child: Padding(
// //           padding: const EdgeInsets.symmetric(horizontal: 20),
// //           child: SingleChildScrollView(
// //             child: Column(
// //               mainAxisAlignment: MainAxisAlignment.start,
// //               crossAxisAlignment: CrossAxisAlignment.start,
// //               children: [
// //                 SizedBox(height: 70),
// //                 Center(child: Image.asset("$staticAssets/logo.png", scale: 5)),
// //                 Center(
// //                   child: Text(
// //                     "Login",
// //                     style: style24.copyWith(
// //                       fontWeight: FontWeight.w600,
// //                       color: Colors.white,
// //                     ),
// //                   ),
// //                 ),
// //                 Text(
// //                   "Email Adress",
// //                   style: TextStyle(color: Colors.white),
// //                   textAlign: TextAlign.start,
// //                 ),
// //                 SizedBox(height: 10),
// //                 TextFormField(
// //                   controller: email,
// //                   decoration: InputDecoration(
// //                     hintText: "email address",
// //                     fillColor: Colors.white,
// //                     filled: true,

// //                     border: OutlineInputBorder(
// //                       borderRadius: BorderRadius.circular(10),
// //                     ),
// //                   ),
// //                 ),
// //                 SizedBox(height: 20),

// //                 Text("Password", style: TextStyle(color: Colors.white)),
// //                 TextFormField(
// //                   controller: pasword,
// //                   obscureText: true,
// //                   decoration: InputDecoration(
// //                     hintText: "Password",
// //                     fillColor: Colors.white,
// //                     filled: true,

// //                     border: OutlineInputBorder(
// //                       borderRadius: BorderRadius.circular(10),
// //                     ),
// //                   ),
// //                 ),
// //                 Align(
// //                   alignment: Alignment.topRight,
// //                   child: Text(
// //                     "Forgot Password?",
// //                     style: TextStyle(color: Colors.white),
// //                   ),
// //                 ),
// //                 Custom_button(
// //                   color: Color(0xff119DA4),
// //                   height: 50,
// //                   title: "login",
// //                   witdh: 200,
// //                   onTap: login,
// //                 ),
// //                 Text(
// //                   'Don’t have an account? Sign up',
// //                   style: style24.copyWith(fontSize: 16, color: Colors.white),
// //                 ),
// //               ],
// //             ),
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';

// import 'package:girlsclan/ui/screens/auth_screens/signup_screen.dart';
// import 'package:girlsclan/ui/screens/home.dart';

// class LoginScreen extends StatefulWidget {
//   @override
//   _LoginScreenState createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();

//   final FirebaseAuth _auth = FirebaseAuth.instance;

//   bool isLoading = false;

//   void login(dynamic _formKey) async {
//     if (_formKey.currentState!.validate()) {
//       setState(() {
//         isLoading = true;
//       });

//       try {
//         await _auth.signInWithEmailAndPassword(
//           email: emailController.text,
//           password: passwordController.text,
//         );
//         Navigator.push(
//           context,
//           MaterialPageRoute(builder: (context) => Home()),
//         );

//         ScaffoldMessenger.of(
//           context,
//         ).showSnackBar(SnackBar(content: Text("Login Successful!")));

//         // 👉 Yahan apni HomeScreen lagao
//         // Navigator.push(context, MaterialPageRoute(builder: (_) => HomeScreen()));
//       } on FirebaseAuthException catch (e) {
//         ScaffoldMessenger.of(
//           context,
//         ).showSnackBar(SnackBar(content: Text(e.message ?? "Login failed")));
//       } finally {
//         setState(() {
//           isLoading = false;
//         });
//       }
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[200],
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Card(
//             elevation: 6,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(15),
//             ),
//             child: Padding(
//               padding: const EdgeInsets.all(20),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Text(
//                     "Login",
//                     style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                   ),

//                   SizedBox(height: 20),

//                   TextFormField(
//                     controller: emailController,
//                     decoration: InputDecoration(labelText: "Email"),
//                   ),

//                   TextFormField(
//                     controller: passwordController,
//                     obscureText: true,
//                     decoration: InputDecoration(labelText: "Password"),
//                   ),

//                   SizedBox(height: 20),

//                   isLoading
//                       ? CircularProgressIndicator()
//                       : ElevatedButton(onPressed: login, child: Text("Login")),

//                   SizedBox(height: 10),

//                   TextButton(
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (context) => Home()),
//                       );
//                     },
//                     child: Text("Don't have an account? Sign Up"),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
