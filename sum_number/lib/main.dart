import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sum_number/home.dart';
import 'package:sum_number/provider.dart';

void main(){
  runApp(ChangeNotifierProvider(
    create: (context) => numberSum(),
    child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}