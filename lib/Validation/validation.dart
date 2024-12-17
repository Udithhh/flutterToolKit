import 'package:flutter/material.dart';

class MyValidation extends StatefulWidget {
  const MyValidation({super.key});

  @override
  State<MyValidation> createState() => _MyValidationState();
}

class _MyValidationState extends State<MyValidation> {
  final _formkey = GlobalKey<FormState>();

  final _name = TextEditingController();
  final _email = TextEditingController();
  final _number = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: _formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //name textform field
              SizedBox(
                width: 400,
                child: TextFormField(
                  decoration: InputDecoration(hintText: "username"),
                  controller: _name,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your user name";
                    } else if (value.length < 3) {
                      return "user name should contain more than 3 characters";
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //email textform field
              SizedBox(
                width: 400,
                child: TextFormField(
                  decoration: InputDecoration(hintText: "email"),
                  controller: _email,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your email";
                    } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+')
                        .hasMatch(value)) {
                      return "Please Enter valid email";
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //phone number textform field
              SizedBox(
                width: 400,
                child: TextFormField(
                  decoration: InputDecoration(hintText: "phone number"),
                  controller: _number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your phone number";
                    } else if (value.length != 10) {
                      return "Enter valid phone number";
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              SizedBox(
                height: 40,
              ),
              //button
              ElevatedButton(onPressed: validateINput, child: Text("Login"))
            ],
          ),
        ),
      ),
    );
  }

  void validateINput() {
    if (_formkey.currentState!.validate()) {
      //do what you want
    }
  }
}
