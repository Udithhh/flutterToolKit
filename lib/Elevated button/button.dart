import 'package:flutter/material.dart';

class MyElevatedButton extends StatefulWidget {
  const MyElevatedButton({super.key});

  @override
  State<MyElevatedButton> createState() => _MyElevatedButtonState();
}

class _MyElevatedButtonState extends State<MyElevatedButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateColor.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.red; // Color when pressed
              }
              return Colors.green; // Default color
            }),
          ),
          onPressed: () {
            print("Button Pressed");
          },
          child: const Text("Button"),
        ),
      ),
    );
  }
}
