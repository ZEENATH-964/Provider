import 'package:flutter/material.dart';

class buttonColor extends ChangeNotifier{
  List<Color>colors=[Colors.red,Colors.yellow,Colors.green];
  int index=0;
  Changee(){
    if(index<2){
      index++;  
    }else{
      index=0;
    }
notifyListeners();
  }

void buttonChange(){
  if(index==0){
    colors[0];
  }else if(index==1){
    colors[1];
  }else if(index==2){
    colors[2];
  }
  notifyListeners();
}


}