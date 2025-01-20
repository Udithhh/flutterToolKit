// ignore_for_file: use_build_context_synchronously, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared%20preference/shareHome.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedLogin extends StatefulWidget {
  const SharedLogin({super.key});

  @override
  State<SharedLogin> createState() => _SharedLoginState();
}

class _SharedLoginState extends State<SharedLogin> {
  final nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 450.0,
              child: TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                    hintText: "Enter a name...", border: OutlineInputBorder()),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                ),
                onPressed: svaeAndNavigate,
                child: Text("NEXT"))
          ],
        ),
      ),
    );
  }

  Future<void> svaeAndNavigate() async {
    final prefs = await SharedPreferences.getInstance();
    final name = nameController.text;

    if (name.isNotEmpty) {
      await prefs.setString('username', name);
      Navigator.push(
          // ignore: use_build_context_synchronously
          context,
          MaterialPageRoute(builder: (context) => MySharedPage()));
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('please enter a name')));
    }
  }
}
