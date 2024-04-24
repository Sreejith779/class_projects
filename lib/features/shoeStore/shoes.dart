import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample1/features/screens/screen1.dart';
import 'package:sample1/features/shoeStore/shoeModel.dart';


class Shoes extends StatelessWidget {
    Shoes({super.key});
  final List<Map<String,dynamic>>shoes = [
    {
      "tittle":"Feethit",
      "image": "https://m.media-amazon.com/images/I/81fvgBicIUL._AC_SY695_.jpg",
      "type":"Running Shoes Athletic Gym Tennis Shoes for Men",
      "price": 50
    },
    {
      "tittle":"Kapsen ",
      "image": "https://m.media-amazon.com/images/I/71HLIG03ymL._AC_SY675_.jpg",
      "type":"Sneakers Workout Calzado para Hombre",
      "price": 80
    },  {
      "tittle":"Kapsen ",
      "image": "https://th.bing.com/th/id/R.d517ca7838e27df01decc9d70f292071?rik=bI4yhKuy7dDAyg&riu=http%3a%2f%2fpluspng.com%2fimg-png%2fshoes-png-sneaker-png-transparent-image-2500.png&ehk=kyWee4brz%2frLtbcCcpd%2flVSuWY6gQv%2b7nouzn%2f%2fsues%3d&risl=&pid=ImgRaw&r=0",
      "type":"Sneakers Workout Calzado para Hombre",
      "price": 140
    },{
      "tittle":"Kapsen ",
      "image": "https://pluspng.com/img-png/shoes-png-shoes-png-file-png-image-1180.png",
      "type":"Sneakers Workout Calzado para Hombre",
      "price": 120
    },{
      "tittle":"Kapsen ",
      "image": "https://th.bing.com/th/id/OIP.G83KJGfKeS-_nDzzEE84aAHaF5?rs=1&pid=ImgDetMain",
      "type":"Sneakers Workout Calzado para Hombre",
      "price": 145
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Padding(
  padding: const EdgeInsets.only(top: 15,left: 20,right: 20,bottom: 20),
  child: Container(
    child: GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
        childAspectRatio: 0.58),
        itemCount: shoes.length,
        itemBuilder: (context,index){
      return InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen1(ShoeModel: shoes[index])));
        },
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.all(5),
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage(shoes[index]["image"]),
                  fit: BoxFit.fill)
                ),
              ),
              Text(shoes[index]["tittle"],
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700
              ),),
              Expanded(child: Text(shoes[index]["type"],
              style: const TextStyle(
                color: Colors.grey
              ),)),
              Text("\$ ${shoes[index]["price"]}",
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Colors.grey
              ),)
        
            ],
          ),
        ),
      );
        }),
  ),
),
    );
  }
}
