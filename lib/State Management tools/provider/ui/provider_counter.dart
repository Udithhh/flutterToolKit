import 'package:flutter/material.dart';
import 'package:flutter_application_1/State%20Management%20tools/provider/controller/provider_controller.dart';
import 'package:provider/provider.dart';

class ProviderCounter extends StatelessWidget {
  const ProviderCounter({super.key});

  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<ProviderCounterController>(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Count : ${counterProvider.count}",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: counterProvider.increment,
                  child: Text("Increment"),
                ),
                ElevatedButton(
                  onPressed: counterProvider.decrement,
                  child: Text("Decrement"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
