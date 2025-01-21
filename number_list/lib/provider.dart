import 'package:flutter/material.dart';

class numberList extends ChangeNotifier{
  List<int>arr=[];
  int number=1;
  void print(){
   arr.add(number++);
   notifyListeners();
  }

  void clear(){
    number=1;
    arr.clear();
    notifyListeners();
  }
}