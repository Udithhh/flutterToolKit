import 'package:flutter/material.dart';

class MyRadioButton extends StatefulWidget {
  const MyRadioButton({super.key});

  @override
  State<MyRadioButton> createState() => _MyRadioButtonState();
}

class _MyRadioButtonState extends State<MyRadioButton> {
  String _selectGender = "Male";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 40,
            ),
            Text("SELECT GENDER"),
            SizedBox(
              height: 20,
            ),
            RadioListTile<String>(
                title: const Text("Male"),
                value: "Male",
                groupValue: _selectGender,
                onChanged: (value) {
                  setState(() {
                    _selectGender = value!;
                  });
                }),
            RadioListTile<String>(
                title: const Text("Female"),
                value: "Female",
                groupValue: _selectGender,
                onChanged: (value) {
                  setState(() {
                    _selectGender = value!;
                  });
                }),
            RadioListTile<String>(
                title: const Text("Others"),
                value: "Others",
                groupValue: _selectGender,
                onChanged: (value) {
                  setState(() {
                    _selectGender = value!;
                  });
                })
          ],
        ),
      ),
    );
  }

  void s20() {
    SizedBox(
      height: 20,
    );
  }

  void s10() {
    SizedBox(
      height: 10,
    );
  }
}
