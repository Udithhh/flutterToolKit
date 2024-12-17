import 'package:flutter/material.dart';

class MyToggle extends StatefulWidget {
  const MyToggle({super.key});

  @override
  State<MyToggle> createState() => _MyToggleState();
}

class _MyToggleState extends State<MyToggle> {
  bool isOn = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: isOn ? Colors.green : Colors.red,
            ),
            onPressed: () {
              setState(() {
                isOn = !isOn;
              });
            },
            child: Text(
              isOn ? "ON" : "OFF",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            )),
      ),
    );
  }
}
