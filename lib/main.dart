import 'package:flutter/material.dart';
import 'package:flutter_application_1/API/apiCall.dart';
import 'package:flutter_application_1/API/posrAPI.dart';
import 'package:flutter_application_1/Architecture/MVC/view/counter_view.dart';
import 'package:flutter_application_1/Login%20Page%20%5Bfolder%20wise%5D/Pages/login_page.dart';
import 'package:flutter_application_1/State%20Management%20tools/getx/front_page.dart';
import 'package:flutter_application_1/State%20Management%20tools/getx/homepage.dart';
import 'package:flutter_application_1/State%20Management%20tools/provider/controller/provider_controller.dart';
import 'package:flutter_application_1/State%20Management%20tools/provider/ui/provider_counter.dart';
import 'package:flutter_application_1/Tab%20Bar/mytab.dart';
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
import 'package:flutter_application_1/shared%20preference/login.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ProviderCounterController(),
    child: MyApp(),
  ));
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
      home: ProviderCounter(),
    );
  }
}
