import 'package:flutter/material.dart';
import 'package:girlsclan/ui/screens/practising/practising.dart';
import 'package:provider/provider.dart';

class Counter extends StatelessWidget {
  const Counter({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Practising>(
      builder: (context, provider, child) {
        return Text("Count: ${provider.count}");
      },
    );
  }
}
