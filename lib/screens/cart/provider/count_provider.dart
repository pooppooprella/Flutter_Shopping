import 'package:flutter/material.dart';

class CountProvider extends ChangeNotifier {
  int count = 0;
  String value = "test";

  int get _count => count;

  add() {
    count++;
    notifyListeners(); //변경상태를 알려줘야함.
  }

  remove() {
    count--;
    notifyListeners(); //변경상태를 알려줘야함.
  }
}
