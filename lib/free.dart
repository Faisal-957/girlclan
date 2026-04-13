import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  int selectedIndex = 1; // koi button select nahi

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(4, (index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: selectedIndex == index
                      ? Colors.red
                      : Colors.blue,
                ),
                onPressed: () {
                  setState(() {
                    selectedIndex = index; // jis button par click ho
                  });
                },
                child: Text("Btn ${index + 1}"),
              ),
            );
          }),
        ),
      ),
    );
  }
}
