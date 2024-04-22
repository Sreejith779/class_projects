import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Drawers extends StatelessWidget {
  const Drawers({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent.withOpacity(0.5),
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.withOpacity(0.8),
        title: Text("Drawer"),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white.withOpacity(0.5),
        child: listTiles(),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () => _showSheet(context),
          child: const FaIcon(
            FontAwesomeIcons.share,
            size: 40,
          ),
        ),
      ),
    );
  }

  Widget listTiles() {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        children: [
          Container(
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                      "https://i.pinimg.com/736x/01/80/c4/0180c47a876a0619bbba1c42c2f0f18c.jpg"),
                ),
                const Text(
                  "Sreejith K M",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                ),
                Text(
                  "sreejithhkm@gmail.com",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Text("SIGN OUT"),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: FaIcon(
                    FontAwesomeIcons.pen,
                    size: 20,
                  ),
                  title: Text(
                    "Add Leads",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
                ListTile(
                  leading: FaIcon(
                    FontAwesomeIcons.star,
                    size: 20,
                  ),
                  title: Text(
                    "Ports Redemption",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
                ListTile(
                  leading: FaIcon(
                    FontAwesomeIcons.star,
                    size: 20,
                  ),
                  title: Text(
                    "Ports",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text(
                    "Profile",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                Text("Communications",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 17
                ),),
                ListTile(
                  leading: Icon(Icons.lock),
                  title: Text(
                    "Privacy Policy",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.phone),
                  title: Text(
                    "Contact Us",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.coronavirus_outlined),
                  title: Text(
                    "About Us",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  void _showSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          margin: EdgeInsets.all(20),
          child: GridView.count(
            crossAxisCount: 3,
            children: List.generate(
                7,
                (index) => Container(
                    margin: EdgeInsets.all(5),
                    child: Center(
                      child: FaIcon(
                        FontAwesomeIcons.solidFolder,
                        size: 55,
                        color: Colors.primaries[Random().nextInt(5)]
                            .withOpacity(0.4),
                      ),
                    ))),
          ),
        );
      },
    );
  }
}
