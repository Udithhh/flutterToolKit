import 'package:flutter/material.dart';

class MyCheckBox extends StatefulWidget {
  const MyCheckBox({super.key});

  @override
  State<MyCheckBox> createState() => _MyCheckBoxState();
}

class _MyCheckBoxState extends State<MyCheckBox> {
  bool _trueCheck = false;
  bool _falseCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                    value: _trueCheck,
                    onChanged: (value) {
                      setState(() {
                        _trueCheck = value!;
                        _falseCheck = false;
                      });
                    }),
                SizedBox(
                  width: 20,
                ),
                Text("True")
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                    value: _falseCheck,
                    onChanged: (value) {
                      setState(() {
                        _falseCheck = value!;
                        _trueCheck = false;
                      });
                    }),
                SizedBox(
                  width: 20,
                ),
                Text("False")
              ],
            )
          ],
        ),
      ),
    );
  }
}
