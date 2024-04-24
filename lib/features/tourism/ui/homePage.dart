import 'package:flutter/material.dart';
import 'package:sample1/features/tourism/ui/detailedPage.dart';
import 'package:sample1/model/countryModel.dart';

class TourismApp extends StatefulWidget {
  const TourismApp({super.key});

  @override
  State<TourismApp> createState() => _TourismAppState();
}

class _TourismAppState extends State<TourismApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        child: GridView.builder(
          itemCount: places.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1,
            childAspectRatio: 1.45),
            itemBuilder: (context,index){

          return Container(
            margin: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>
                DetailedPage(place: places[index],)));
              },
              child: Container(
                height: 250,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(places[index].image,),
                  fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 180,left: 20),
                  child: Text(places[index].countryName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w600
                  ),),
                ),
              ),
            )
              ],
            ),
          );
            }),
      ),
    );
  }
}
