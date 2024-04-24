
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../../../model/countryModel.dart';

class DetailedPage extends StatelessWidget {
  const DetailedPage({super.key, required this.place});
  final Place place;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 350,
              width: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(place.image),
                  fit: BoxFit.cover
                ),
                borderRadius:   BorderRadius.only(bottomRight:Radius.circular(15),bottomLeft: Radius.circular(15) )
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10,left: 10),
              child: Text(place.countryName,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10,left: 10),
              child: Text(place.description,
              style: const TextStyle(
                fontSize: 15,
              ),),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10,left: 10),
              child: Text("Place to Visit",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600
              ),),
            ),
    Expanded(
      child: Container(
        margin: EdgeInsets.all(10),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children:List.generate(3, (index) =>
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                  width: 150,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(place.image),
                          fit: BoxFit.cover
                      ),
                      borderRadius: BorderRadius.circular(20)
                  ),
                ),
              ),)
        ),
      ),
    )
          ],
        ),
      ),
    );
  }
}
