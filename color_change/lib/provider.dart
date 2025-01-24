import 'package:flutter/material.dart';

class colorChange extends ChangeNotifier{
  int index=0;
  List<Color>colors=[Colors.red,Colors.yellow,Colors.pink,Colors.green];
  void changes(){
    if(index<3){
      index++;
    }else{
      index=0;
    }
    notifyListeners();
  }

  void show(){
 if(index==0){
  colors[0];
 }else if(index==1){
  colors[1];
 }else if(index==2){
  colors[2];
 }else if(index==3){
  colors[3];
 }
 notifyListeners();
  }
}