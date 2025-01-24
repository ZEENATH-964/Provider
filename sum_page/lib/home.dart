import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:sum_page/provider.dart';
import 'package:sum_page/result.dart';

class Home extends StatelessWidget {
   Home({super.key});
final firstController=TextEditingController();
final secondController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(

      appBar: AppBar(),
      body: Consumer<shosum>(
        builder: (context,value,_) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                          controller: firstController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Enter Number'
                          ),
                  ),
              Gap(10),
                  TextField(
                          controller: secondController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Enter Number'
                          ),
                  ),
              
                  TextButton(onPressed: (){
                    final first=firstController.text;
                    final second=secondController.text;
                    if(int.tryParse(first)==null||int.tryParse(second)==null){
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(' please Enter number')));
                      return;
                    }
                    value.totalSum(first, second);
                    value.addListener((){
                      if(!value.log){
                        Navigator.push(context, MaterialPageRoute(builder: (ctx)=>Result()));
                      }
                    });
                  }, child: Text('Submit',style: TextStyle(fontSize: 20),)),
                  if(value.log)
                  CircularProgressIndicator()
                ],
              ),
            ),
          );
        }
      ),
    ));
  }
}