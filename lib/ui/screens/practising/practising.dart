import 'package:flutter/foundation.dart';

class Practising extends ChangeNotifier {
  int count = 0;

  void increment() {
    count++;
    notifyListeners();
  }
}
