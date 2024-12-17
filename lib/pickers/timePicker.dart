import 'package:flutter/material.dart';

class MyTimePicker extends StatefulWidget {
  const MyTimePicker({super.key});

  @override
  State<MyTimePicker> createState() => _MyTimePickerState();
}

class _MyTimePickerState extends State<MyTimePicker> {
  TimeOfDay? _selectedTime;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(_selectedTime == null
                ? "No time is Selected!"
                : "Time : ${_selectedTime!.format(context)}"),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[900],
                  foregroundColor: Colors.white,
                  textStyle: TextStyle(fontWeight: FontWeight.bold)),
              onPressed: () => _pickTime(context),
              child: Text('Get Time'),
            )
          ],
        ),
      ),
    );
  }

  Future<void> _pickTime(BuildContext context) async {
    TimeOfDay? pickedTime =
        await showTimePicker(context: context, initialTime: TimeOfDay.now());
    if (pickedTime != null && pickedTime != _selectedTime) {
      setState(() {
        _selectedTime = pickedTime;
      });
    }
  }
}
