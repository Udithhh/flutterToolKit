import 'package:flutter/material.dart';

class MyAlert extends StatefulWidget {
  const MyAlert({super.key});

  @override
  State<MyAlert> createState() => _MyAlertState();
}

class _MyAlertState extends State<MyAlert> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red, foregroundColor: Colors.black),
            onPressed: () {
              _showAlert(context);
            },
            child: Icon(Icons.light)),
      ),
    );
  }

  void _showAlert(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              "WARNING",
              style: TextStyle(color: Colors.red),
            ),
            content: Text("This is ALERT message!!"),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("Cancel"))
            ],
          );
        });
  }
}
