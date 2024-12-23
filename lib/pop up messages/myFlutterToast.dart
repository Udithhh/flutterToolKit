import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MyFlutterToast extends StatefulWidget {
  const MyFlutterToast({super.key});

  @override
  State<MyFlutterToast> createState() => _MyFlutterToastState();
}

class _MyFlutterToastState extends State<MyFlutterToast> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green, foregroundColor: Colors.black),
            onPressed: _showToast,
            child: Text("Click")),
      ),
    );
  }

  void _showToast() {
    Fluttertoast.showToast(
      msg: "You clicked a button",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.black,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }
}
