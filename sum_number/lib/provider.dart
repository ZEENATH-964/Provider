import 'package:flutter/material.dart';

class numberSum extends ChangeNotifier{
  int sum=0;
  bool error=false;
  bool isLogged=false;
  void totalSum(String first,String second)async{
    if(int.parse(first)==null||int.parse(second)==null){
      error=true;
      notifyListeners();
      return;
    }
    error=false;
    isLogged=true;
    notifyListeners();
    await Future.delayed(Duration(seconds: 2));
    final firstNum=int.parse(first);
    final secondNum=int.parse(second);
    sum=firstNum+secondNum;
    isLogged=false;
    notifyListeners();
  }
}