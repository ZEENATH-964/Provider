import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:sum_page/home.dart';
import 'package:sum_page/provider.dart';

class Result extends StatelessWidget {
  const Result({super.key});

  @override
  Widget build(BuildContext context) {
    final sum=Provider.of<shosum>(context).sum;
    return SafeArea(child: Scaffold(
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Sum',style: TextStyle(fontSize: 25,color: Colors.red,fontWeight: FontWeight.bold)),
            Text('${sum}',style: TextStyle(fontSize: 20)),
            Gap(20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black
              ),
              onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (ctx)=>Home()));
            }, child: Text('Back',style: TextStyle(color: Colors.white),))
          ],
        ),
      ),
    ));
  }
}