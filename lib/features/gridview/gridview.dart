import 'package:flutter/material.dart';

class Countries extends StatefulWidget {
  const Countries({super.key});

  @override
  State<Countries> createState() => _CountriesState();
}

class _CountriesState extends State<Countries> {

   List<Map<String,dynamic>>counties = [
    {"country": "India",
    "image": "https://www.planetware.com/photos-large/IND/india-top-attractions-jaisalmer.jpg"},
    {"country": "Germany",
      "image": "https://th.bing.com/th/id/OIP.KNiJ0Q7nZwoiJxgts7dU8wHaE6?w=1200&h=796&rs=1&pid=ImgDetMain"},
    {"country": "America",
    "image": "https://th.bing.com/th/id/R.03fae0a4589c3c4d83053de3a0284ce2?rik=sR5tg2yZcTZr2w&riu=http%3a%2f%2fnyharborfishing.com%2fwp-content%2fplugins%2fdoptg%2fuploads%2fthumbs%2fSGDB5NZqRAaPMS2SYK8qWzQd1BHxTKAg8YpEYwMgdgGZNnwz78x72WwAc8BQg67bM.jpg&ehk=gpAGYToIiWjFoW0g%2fqd0TJ%2f8N%2bPZ%2fO1oPxHihuvKyDM%3d&risl=&pid=ImgRaw&r=0"},
    {"country": "Bahrain",
    "image": "https://media.vogue.in/wp-content/uploads/2017/12/72-hours-in-Bahrain.jpg"},
    {"country": "Newsland",
    "image": "https://d27k8xmh3cuzik.cloudfront.net/wp-content/uploads/2015/09/Auckland.jpg"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Container(
margin: const EdgeInsets.all(10),
  child: GridView.builder(
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 0.9,),
itemCount:counties.length ,
    itemBuilder: (BuildContext context,   index) {
      return  Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.grey,
            image: DecorationImage(image: NetworkImage(counties[index]["image"],),
            fit: BoxFit.cover,
              opacity: 0.9
            )
          ),
          child: Row(
            mainAxisAlignment:  MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 150, left: 10),
                child: Center(child: Text(counties[index]["country"],
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Colors.white
                ),)),
              ),
            ],
          ),
        ),
      );
    },

  ),
),
    );
  }
}
