import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MySharedPage extends StatefulWidget {
  const MySharedPage({super.key});

  @override
  State<MySharedPage> createState() => _MySharedPageState();
}

class _MySharedPageState extends State<MySharedPage> {
  String _username = '';

  Future<void> _loadName() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _username = prefs.getString('username') ?? '';
    });
  }

  @override
  void initState() {
    super.initState();
    _loadName();
  }

  @override
  Widget build(BuildContext context) {
    // _loadName();
    return Scaffold(
      body: Center(
        child: Text("Hi $_username"),
      ),
    );
  }
}
