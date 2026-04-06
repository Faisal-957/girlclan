import 'package:flutter/material.dart';
import 'package:girlsclan/core/constant/assets.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,

        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("$staticAssets/wlcome2.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 670),
              Row(
                children: [
                  Buttons(color: Color(0xff119DA4), title: "login"),
                  SizedBox(width: 10),
                  Buttons(color: Color(0xffED4583), title: "Signup"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Buttons extends StatelessWidget {
  final String title;
  final Color color;
  const Buttons({super.key, required this.color, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 171,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),

      child: Center(
        child: Text(
          title,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
