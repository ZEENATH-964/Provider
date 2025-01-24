import 'package:flutter/material.dart';

class changeText extends ChangeNotifier{

 double textSize=30.0;
 
  void increament(){
    if(textSize<40){
        textSize++;
    }
 
    notifyListeners();
  }

  void decreament(){
 if(textSize>20){
  textSize--;
 }
     notifyListeners();
  }


}