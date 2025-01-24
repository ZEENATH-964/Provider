import 'package:color_change/provider.dart';
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
    int index=Provider.of<colorChange>(context).index;
    Color color=Provider.of<colorChange>(context).colors[index];
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 182, 181, 181),
        ),
        body: Center(
          child: GestureDetector(
            onTap: () {
              Provider.of<colorChange>(context,listen: false).changes();
              Provider.of<colorChange>(context,listen: false).show();
            },
            child: Container(
              color: color,
              height: 300,
              width: 300,
            ),
          ),
        ) 
        
      ),
    );
  }
}