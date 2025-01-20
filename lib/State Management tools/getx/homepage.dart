import 'package:flutter/material.dart';
import 'package:flutter_application_1/State%20Management%20tools/getx/control_getx.dart';
import 'package:get/get.dart';

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    final CounterCotrol control = Get.put(CounterCotrol());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(
          "Example of GetX",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(
                  "Count : ${control.count}",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                )),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  control.increment();
                },
                child: Text("Increment")),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  control.reset();
                },
                child: Text("Reset")),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  control.decrement();
                },
                child: Text("Decrement"))
          ],
        ),
      ),
    );
  }
}
