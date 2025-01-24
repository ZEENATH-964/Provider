import 'package:flutter/material.dart';
import 'package:icon_change/provider.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
appBar: AppBar(),
body: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Container(
      height: 200,
      width: 300,
      color: const Color.fromARGB(255, 203, 203, 203),
      child: Consumer<iconChange>(
        builder: (context,value,_) {
          return Icon(value.currentIcon);
        }
      ),
    ),

    Consumer<iconChange>(
      builder: (context,value,_) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
        
             value.iconss(Icons.home);
            }, child: Icon(Icons.home)),
            ElevatedButton(onPressed: (){
              value.iconss(Icons.abc);
            }, child: Icon(Icons.abc)),
            ElevatedButton(onPressed: (){
         value.iconss(Icons.sunny);
            }, child: Icon(Icons.sunny)),
          ],
        );
      }
    )
  ],
),

    ));
  }
}