import 'package:flutter/material.dart';

class iconChange extends ChangeNotifier{
  IconData currentIcon=Icons.home;
  void iconss(IconData icon){
    currentIcon=icon;
    notifyListeners();

  }
}