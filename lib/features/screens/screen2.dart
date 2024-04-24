import 'package:flutter/material.dart';
import 'package:sample1/features/screens/screen1.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: ElevatedButton(onPressed: () { 
          Navigator.push(context, MaterialPageRoute(builder: (context)=>
          Screen1(ShoeModel: null,)));
        }, child: null,)
      )
    );
  }
}
