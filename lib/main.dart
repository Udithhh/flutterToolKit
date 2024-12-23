import 'package:flutter/material.dart';
import 'package:flutter_application_1/checkbox/myCheckbox.dart';
import 'package:flutter_application_1/circle%20avatar/myProfile.dart';
import 'package:flutter_application_1/drop%20down/mydrop.dart';
import 'package:flutter_application_1/pickers/datePicker.dart';
import 'package:flutter_application_1/pickers/imagePicker.dart';
import 'package:flutter_application_1/pickers/timePicker.dart';
import 'package:flutter_application_1/pop%20up%20messages/MyDialogue.dart';
import 'package:flutter_application_1/pop%20up%20messages/myAlert.dart';
import 'package:flutter_application_1/pop%20up%20messages/myFlutterToast.dart';
import 'package:flutter_application_1/radio%20button/button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyDialogue(),
    );
  }
}
