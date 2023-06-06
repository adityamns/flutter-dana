import 'package:flutter/material.dart';

class BottomNavigationProvider extends ChangeNotifier {
  int selectedIndex = 0;

  void onSelected(int index) {
    selectedIndex = index;
    notifyListeners();
  }
}
