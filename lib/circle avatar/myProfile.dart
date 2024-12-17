import 'package:flutter/material.dart';

class MyCircleAvatar extends StatefulWidget {
  const MyCircleAvatar({super.key});

  @override
  State<MyCircleAvatar> createState() => _MyCircleAvatarState();
}

class _MyCircleAvatarState extends State<MyCircleAvatar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircleAvatar(
          radius: 70,
          backgroundColor: Colors.green,
          child: CircleAvatar(
            radius: 65,
            backgroundImage: AssetImage('assets/camera.jpeg'),
          ),
        ),
      ),
    );
  }
}
