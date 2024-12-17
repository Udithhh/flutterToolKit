import 'package:flutter/material.dart';

class MyList extends StatefulWidget {
  const MyList({super.key});

  @override
  State<MyList> createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      body: ListView(
        children: [
          Card(
            child: ListTile(
              leading: Icon(Icons.map),
              title: Text("Map"),
              // subtitle: Text("Mini Map"),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.photo),
              title: Text("Photo"),
              // subtitle: Text("Mini Map"),
            ),
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text("Phone"),
            // subtitle: Text("Mini Map"),
          )
        ],
      ),
    );
  }
}
