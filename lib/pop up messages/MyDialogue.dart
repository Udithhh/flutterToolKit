import 'package:flutter/material.dart';

class MyDialogue extends StatefulWidget {
  const MyDialogue({super.key});

  @override
  State<MyDialogue> createState() => _MyDialogueState();
}

class _MyDialogueState extends State<MyDialogue> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange, foregroundColor: Colors.black),
            onPressed: () {
              _showMessage(context);
            },
            child: Text("click")),
      ),
    );
  }

  void _showMessage(BuildContext content) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text("Did you clicked me ❤️"),
      duration: Duration(seconds: 3),
      action: SnackBarAction(
          label: "Undo",
          onPressed: () {
            Navigator.of(context).pop();
          }),
    ));
  }
}
