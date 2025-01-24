import 'package:change_text_size/provider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(

      appBar: AppBar()
      ,
      body: Consumer<changeText>(
        builder: (context,value,_) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text('Hello',style: TextStyle(fontSize: value.textSize),),
              Gap(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(onPressed: (){
                    value.increament();
                  },child: Icon(Icons.add),),
                  Gap(10),
                  FloatingActionButton(onPressed: (){
                    value.decreament();
                  },child: Icon(Icons.remove),),
                ],
              )
            ],),
          );
        }
      ),
    ));
  }
}