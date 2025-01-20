import 'package:flutter/material.dart';
import 'package:flutter_application_1/State%20Management%20tools/getx/homepage.dart';
import 'package:get/get.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Counter APP",
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(CounterApp(), transition: Transition.zoom);
        },
        child: Icon(Icons.arrow_forward_outlined),
      ),
    );
  }
}
