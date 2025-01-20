import 'package:flutter/material.dart';
import 'package:flutter_application_1/Login%20Page%20%5Bfolder%20wise%5D/Pages/Home_page.dart';
import 'package:flutter_application_1/Login%20Page%20%5Bfolder%20wise%5D/Widgets/custom_button.dart';
import 'package:flutter_application_1/Login%20Page%20%5Bfolder%20wise%5D/Widgets/custom_text.dart';
import 'package:flutter_application_1/Login%20Page%20%5Bfolder%20wise%5D/Widgets/custom_textform.dart';
import 'package:flutter_application_1/Login%20Page%20%5Bfolder%20wise%5D/services/auth_services.dart';
import 'package:flutter_application_1/Login%20Page%20%5Bfolder%20wise%5D/services/validation_serives.dart';

class MyLoginPage extends StatelessWidget {
  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();
  MyLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextFromField(
                controller: username, hintText: "username", isPassword: false),
            const SizedBox(
              height: 16.0,
            ),
            CustomTextFromField(
                controller: password, hintText: "password", isPassword: true),
            const SizedBox(
              height: 25,
            ),
            CustomButton(
                onPressed: () {
                  _login(context);
                },
                text: "Login")
          ],
        ),
      ),
    );
  }

  void _login(BuildContext context) {
    String uName = username.text.trim();
    String pass = password.text.trim();

    String validationMessage = ValidationSerives.ValidationInput(uName, pass);

    if (validationMessage.isNotEmpty) {
      AuthServices.showToast(validationMessage, false);
    }

    bool isAuthenticate = AuthServices.authenticate(uName, pass);
    if (isAuthenticate) {
      AuthServices.showToast("Login Successful!", true);
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    } else {
      AuthServices.showToast("Invalid username or password", false);
    }
  }
}
