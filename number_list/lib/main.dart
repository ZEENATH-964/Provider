import 'package:flutter/material.dart';
import 'package:number_list/home.dart';
import 'package:number_list/provider.dart';
import 'package:provider/provider.dart';


void main(){
  runApp(ChangeNotifierProvider(
    create: (context) => numberList(),
    child: myApp()));
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Home() ,
    );
  }
}