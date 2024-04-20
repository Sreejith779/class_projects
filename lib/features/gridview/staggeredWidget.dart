import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StaggeredWidget extends StatelessWidget {
  const StaggeredWidget({super.key, required this.image, required this.name, required this.date, required this.place});
final String image;
final String name;
final String date;
final String place;
  @override
  Widget build(BuildContext context) {
    return Container(

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
Expanded(child: Image.network(image,
height: 60,width: 350,
fit: BoxFit.cover,)),
          Text(name,style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600
          ),),
          Text(date,style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: Colors.grey
          ),),
          Text(place,style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: Colors.grey
          ),),
        ],
      ),
    );
  }
}
