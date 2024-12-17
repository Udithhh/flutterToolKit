import 'package:flutter/material.dart';

class HiPage extends StatefulWidget {
  const HiPage({super.key});

  @override
  State<HiPage> createState() => _HiPageState();
}

class _HiPageState extends State<HiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("HI user"),
      ),
    );
  }
}
