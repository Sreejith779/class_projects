import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:sample1/features/gridview/staggeredWidget.dart';

class StagGrid extends StatelessWidget {
  const StagGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      appBar: AppBar(
        title: Text("Staggered"),
      ),
      body:  SingleChildScrollView(
        child: StaggeredGrid.count(crossAxisCount: 4,

        mainAxisSpacing: 15,
        crossAxisSpacing: 15,
        children:   const [
          StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 3, child: Card(
            color: Colors.white,
            child: StaggeredWidget(
              image: 'https://i.pinimg.com/originals/fc/3a/ba/fc3aba3b8f168371a11968e5b9557dd9.jpg',
              name: 'Street View',
              date: '12 Jun 2024',
              place: "Cannada",),

          )),
          StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 5, child: Card(
            child: StaggeredWidget(
              image: 'https://c2.staticflickr.com/6/5162/5237256709_e605ce8645_b.jpg',
              name: 'River View',
              date: '12 Jun 2024',
              place: "Cannada",),
            color: Colors.white,

          )),
          StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 4, child: Card(
            color: Colors.white,
            child: StaggeredWidget(
              image: 'https://wallpapercave.com/wp/wp5382995.jpg',
              name: 'Island View',
              date: '12 Jun 2024',
              place: "Cannada",),

          )),
          StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 3, child: Card(
            child: StaggeredWidget(
              image: 'https://i.pinimg.com/originals/fc/3a/ba/fc3aba3b8f168371a11968e5b9557dd9.jpg',
              name: 'Street View',
              date: '12 Jun 2024',
              place: "Cannada",),
            color: Colors.white,

          )),
          StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 3, child: Card(
            child: StaggeredWidget(
              image: 'https://i.pinimg.com/originals/fc/3a/ba/fc3aba3b8f168371a11968e5b9557dd9.jpg',
              name: 'Street View',
              date: '12 Jun 2024',
              place: "Cannada",),
            color: Colors.white,

          )),

        ],),
      )
    );
  }
}
