import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {

    Future.delayed(Duration(seconds: 10));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SizedBox(
          height: 180,
          child: Lottie.network("https://lottie.host/b71b0a42-085c-4dd5-8aa2-ced5e84ba563/nQS64QepIy.json"),


          // decoration: BoxDecoration(
          //   image: DecorationImage(image: NetworkImage("https://www.creativefabrica.com/wp-content/uploads/2023/02/18/Fall-Gnome-61657046-1.png"))
          // ),
        )
    )
    );
  }
}
