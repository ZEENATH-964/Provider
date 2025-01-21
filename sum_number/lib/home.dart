import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:sum_number/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final firstController=TextEditingController();
  final secondController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(child: Text('Number Sum')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Consumer<numberSum>(
          builder: (context,value,_) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              TextField(
            
                controller:firstController ,
                decoration: InputDecoration(border: OutlineInputBorder(),
                label: Text('FirstNumber'),
                ),
              ),
              Gap(20),
              TextField(
             controller:secondController ,
                decoration: InputDecoration(border: OutlineInputBorder(),
                label: Text('FirstNumber'),
                ),
              ),
              TextButton(onPressed: (){
                final first=firstController.text;
                final second=secondController.text;
                if(int.tryParse(first)==null||int.tryParse(second)==null){
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('please enter number')));
                  return;
                }
                value.totalSum(first, second);
                
              }, child: Text('Submit',style: TextStyle(color: Colors.blue,fontSize: 25, ),)),

              if(value.isLogged)
              CircularProgressIndicator(),
              if(!value.isLogged)
              Text('${value.sum}')
            ],);
          }
        ),
      ),
    ));
  }
}