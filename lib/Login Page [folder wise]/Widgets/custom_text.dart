import 'package:flutter/material.dart';

class Customtext extends StatelessWidget {
  final String text;
  final Color color;
  const Customtext({super.key, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: color),
    );
  }
}
