import 'dart:math';

import 'package:flutter/material.dart';

class ListView_Seperated extends StatelessWidget {
  const ListView_Seperated({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  title: Text("ListView_Seperated"),
  actions: [

  ],
),
      body: ListView.separated(
          itemBuilder: (context,index){
            return Container(
              height: 40,
              color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
              child: Text('Data $index'),
            );
          },
          separatorBuilder: (context,index){
            if(index % 3 ==0){
              return Divider();
            }else{
              return Container();
            }
          },
          itemCount: 10),
    );
  }
}
