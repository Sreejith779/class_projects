import 'package:flutter/material.dart';
import 'package:sample1/features/homePage/ui/homePage.dart';
import 'package:sample1/features/loginPage/ui/loginPage.dart';
import 'package:sample1/features/splashPage/ui/splashScreen.dart';
import 'package:sample1/features/splashScreen.dart';


void main(){

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:HomePage()
    );
  }
}
