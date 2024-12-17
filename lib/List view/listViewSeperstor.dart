import 'package:flutter/material.dart';

class MyListViewSperator extends StatefulWidget {
  const MyListViewSperator({super.key});

  @override
  State<MyListViewSperator> createState() => _MyListViewBuilderState();
}

class _MyListViewBuilderState extends State<MyListViewSperator> {
  final List<String> item = List.generate(20, (index) => "item ${index + 1}");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      body: ListView.separated(
        itemCount: item.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              child: Text("${index + 1}"),
            ),
            title: Text(item[index]),
          );
        },
        separatorBuilder: (context, index) {
          return Divider(
            color: Colors.grey[400],
          );
        },
      ),
    );
  }
}
