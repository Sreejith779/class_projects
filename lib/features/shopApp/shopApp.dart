import 'package:flutter/material.dart';

import '../../model/shopList.dart';
import '../../model/shopModel.dart';


class ShopApp extends StatefulWidget {
  const ShopApp({super.key});

  @override
  State<ShopApp> createState() => _ShopAppState();
}

class _ShopAppState extends State<ShopApp> {

  final List<Products>shopList = shopLists.map((e) =>
  Products(img: e['img'], productName: e['productName'],
      productType: e['productType'], price: e['price'],
      oldPrice: e['oldPrice'], offPrice: e['offPrice'])).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        leading:const Icon(Icons.menu,
        color: Colors.white,),
        title: const Text("Catalog App",
        style: TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.w600
        ),),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: GridView.builder(
          
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 0.6),
            itemCount: shopList.length,
            itemBuilder: (context,index){
              return Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Image.network(shopList[index].img,
                      height: 180,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(shopList[index].productName,
                      style: const TextStyle(fontSize: 17,
                      fontWeight: FontWeight.w600),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(shopList[index].productType),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text("\$${shopList[index].oldPrice}",
                          style: const TextStyle(
                            decoration: TextDecoration.lineThrough,
                            color: Colors.grey,
                            fontWeight: FontWeight.w700
                          ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text("${shopList[index].price}",
                            style: const TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.w700
                            ),
                           ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text("${shopList[index].offPrice}",
                            style: const TextStyle(
                              color: Colors.redAccent,
                              fontWeight: FontWeight.w700
                            ),
                           ),
                        ),
        
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Center(
                      child: Container(
                        width: 160,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.teal,
                        ),
                        child: const Center(
                          child: Text("Add to Cart",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 17
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
