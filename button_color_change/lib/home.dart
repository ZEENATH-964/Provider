import 'package:button_color_change/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  @override
  Widget build(BuildContext context) {
  
    final index=Provider.of<buttonColor>(context).index;
    final color=Provider.of<buttonColor>(context).colors[index];
    return Scaffold(
      appBar: AppBar()
      ,
      body: Consumer<buttonColor>(
        builder: (context,value,_) {
          
          return Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: color),
              onPressed: (){
             value.Changee();
           value.buttonChange();
            }, child: Text('click me')),
          );
        }
      ),
    );
  }
}