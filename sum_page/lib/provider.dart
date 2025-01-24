import 'package:flutter/material.dart';

class shosum extends ChangeNotifier{
int sum=0;
bool error=false;
bool log=false;
void totalSum(String first,String second)async{
if(int.tryParse(first)==null||int.tryParse(second)==null){
  error=true;
  notifyListeners();
  return;
}
error=false;
log=true;
notifyListeners();
await Future.delayed(Duration(seconds: 3));

final firstnum=int.parse(first);
final secondnum=int.parse(second);
sum=firstnum+secondnum;
log=false;
notifyListeners();
}

}