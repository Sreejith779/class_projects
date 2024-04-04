import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sample1/features/loginPage/ui/loginPage.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
Timer(Duration(seconds: 5), () {Navigator.push(context, MaterialPageRoute(builder: (context)=>
LoginPage())); });
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        decoration: const BoxDecoration(
          image: DecorationImage(image: NetworkImage('https://images.pexels.com/photos/20123626/pexels-photo-20123626/free-photo-of-a-table-with-a-painting-set-candles-and-a-box-of-paints.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
          fit: BoxFit.cover)
        ),
        child: Center(child: Text("Welcome",
        style: TextStyle(fontSize: 28)
          ,)
        ),
      ),
    );
  }
}
