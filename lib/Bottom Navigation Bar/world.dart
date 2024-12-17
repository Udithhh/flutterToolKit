import 'package:flutter/material.dart';

class WorldPAge extends StatefulWidget {
  const WorldPAge({super.key});

  @override
  State<WorldPAge> createState() => _WorldPAgeState();
}

class _WorldPAgeState extends State<WorldPAge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("It's your WORLD!!!"),
      ),
    );
  }
}
