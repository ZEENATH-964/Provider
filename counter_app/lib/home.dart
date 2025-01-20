import 'package:counter_app/provider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Counter App'),),
      body: Consumer<counter>(
        builder: (context,value,_) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        list(value.count.toString(), 30),
        Gap(10),
       Row(
        mainAxisAlignment: MainAxisAlignment.center,
         children: [
      
         
      
      
           FloatingActionButton(
            backgroundColor: Colors.green,
            onPressed: (){
           value.increment();
           },child: Icon(Icons.add),),
            Gap(10),
           FloatingActionButton(
             backgroundColor: Colors.red,
            onPressed: (){
           value.decreament();
           },child: Icon(Icons.remove),),
         ],
       ),
       Gap(10),
       TextButton(onPressed: (){value.clear();}, child: list('Reset', 30))
      ],);
        }
      ),
      
      ),
    );
  }
}

Widget list(String text,double size){
  return Text(text,style: TextStyle(fontSize: size,fontWeight: FontWeight.bold),);
}