import 'package:flutter/material.dart';

class MyDropDown extends StatefulWidget {
  const MyDropDown({super.key});

  @override
  State<MyDropDown> createState() => _MyDropDownState();
}

class _MyDropDownState extends State<MyDropDown> {
  final List<String> _districts = [
    "Thiruvananthapuram",
    "Kollam",
    "Pathanamthitta",
    "Alappuzha",
    "Kottayam",
    "Idukki",
    "Ernakulam",
    "Thrissur",
    "Palakkad",
    "Malappuram",
    "Kozhikode",
    "Wayanad",
    "Kannur",
    "Kasaragod",
  ];

  String? _selectedDistrict;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Select a district"),
            const SizedBox(height: 16),
            SizedBox(
              width: 400,
              child: DropdownButtonFormField<String>(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.symmetric(horizontal: 12.0)),
                value: _selectedDistrict,
                items: _districts.map((district) {
                  return DropdownMenuItem(
                      value: district, child: Text(district));
                }).toList(),
                onChanged: (value) {
                  _selectedDistrict = value;
                },
                hint: const Text("Choose District"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
