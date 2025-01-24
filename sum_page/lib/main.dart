import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sum_page/home.dart';
import 'package:sum_page/provider.dart';

void main(){
  runApp(ChangeNotifierProvider(
    create: (context) => shosum(),
    child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}