import 'package:flutter/material.dart';

class Slivers extends StatelessWidget {
  const Slivers({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: CustomScrollView(
slivers: [
  SliverAppBar(
   floating: true,
   pinned: true,
   title: Text("Products"),
backgroundColor: Colors.deepPurple,
    bottom: AppBar(
      backgroundColor: Colors.green,
      title: SizedBox(
        height: 40,
        width: double.maxFinite,
        child: TextField(
          decoration: InputDecoration(
            hintText: "Search here"
          ),
        ),

      ),
    ),
  ),
  SliverList(
      delegate: SliverChildBuilderDelegate(
              childCount: 10,
              (context, index) => Text("adc1"))
  ),
  SliverToBoxAdapter(
    
  )
],
        ),
      ),
    );
  }
}
