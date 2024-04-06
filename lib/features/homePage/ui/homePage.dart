import 'package:flutter/material.dart';
import 'package:sample1/model/modelList.dart';
import 'package:sample1/utils/textTheme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: Text(
          "Contacts",
          style: MyTextThemes.textHeading,
        ),
      ),
      body: ListView(
          children: List.generate(
              persons.length,
              (index) => Card(
                    color: Colors.white.withOpacity(0.5),
                    
                    child: ListTile(
                        leading: CircleAvatar(
                            backgroundImage:
                                NetworkImage(persons[index]['image'])),
                        trailing: _buildWidget(index),
                        subtitle: Text(persons[index]['number'].toString()),
                        title: Text(
                          (persons[index]['name']),
                        )),
                  ))),
    );
  }

  Widget _buildWidget(int index) {
    if (persons[index]['unread'] == null) {
      return   Text(persons[index]['time'].toString());
    }else{
      return Wrap(direction: Axis.vertical, children: [
        Text(persons[index]['time'].toString()),
        SizedBox(
          height: 4,
        ),
        CircleAvatar(
          radius: 15,
          child: Text(persons[index]['unread'].toString()),
        )
      ]);
    }


  }
}
