import 'package:flutter/material.dart';
import 'package:sample1/features/shoeStore/shoes.dart';
import 'package:sample1/features/shoeStore/utils/textUtils.dart';
import 'package:sample1/utils/textTheme.dart';

class ShoeStore extends StatelessWidget {
  const ShoeStore({super.key});

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("All Shoes"),
            centerTitle: true,
            actions: const [
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: Icon(Icons.search_outlined,
                  size: 30,),
              )
            ],
            bottom: TabBar(tabs: [

              Text("All",
              style: MyTextThemes.textHeading),
              Text("Lifestyle",
                  style: MyTextThemes.textHeading
              ),
              Text("Jordan",
                  style: MyTextThemes.textHeading),
              Text("Running",
                  style: MyTextThemes.textHeading),
            ],
            indicatorColor: Colors.black,
            ),
          ),
          body: TabBarView(children: [
        Shoes(),
        Shoes(),
        Shoes(),
        Shoes(),
          ],
           ),

          bottomSheet: NavigationBar(
            indicatorColor: Colors.white,
            surfaceTintColor: Colors.white,
            selectedIndex: 1,
            destinations: const [
              NavigationDestination(icon: Icon(Icons.home), label: "Home"),
              NavigationDestination(icon: Icon(Icons.search_outlined), label: "Search"),
              NavigationDestination(icon: Icon(Icons.favorite_outline), label: "Favorite"),
              NavigationDestination(icon: Icon(Icons.shopping_bag_outlined), label: "Bag"),
            ],

          )

        ));


  }
}
