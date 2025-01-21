import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:number_list/provider.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(

      appBar: AppBar(
        title: Center(child: Text('Number List')),
        backgroundColor: const Color.fromARGB(255, 163, 162, 162),
      ),
      body: Column(children: [
        Expanded(child: Consumer<numberList>(builder: (context,value,_){
          return ListView.builder(
            itemCount: value.arr.length,
            itemBuilder:(context,index) {
              return ListTile(
                title: Text(value.arr[index].toString()),
              );
            }
          );
        })),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          TextButton(onPressed: (){
            Provider.of<numberList>(context,listen: false).print();
          }, child: Text('print',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
          Gap(10),
          TextButton(onPressed: (){
            Provider.of<numberList>(context,listen: false).clear();
          }, child: Text('clear',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)))
        ],)
      ],),
    ));
  }
}