import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PostAPI extends StatefulWidget {
  const PostAPI({super.key});

  @override
  State<PostAPI> createState() => _PostAPIState();
}

class _PostAPIState extends State<PostAPI> {
  final _title = TextEditingController();
  final _description = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 500,
              child: TextFormField(
                controller: _title,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "title",
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              width: 500,
              child: TextFormField(
                controller: _description,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "description",
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
                onPressed: () {
                  _submitData();
                  _title.clear();
                  _description.clear();
                },
                child: Text("ADD"))
          ],
        ),
      ),
    );
  }

  Future<void> _submitData() async {
    try {
      final response = await http.post(
        Uri.parse('https://crud-backend-6t6r.onrender.com/api/post'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'title': _title.text,
          'description': _description.text,
        }),
      );

      if (response.statusCode == 201) {
        // Success
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Data posted successfully!')),
          );
        }
      } else {
        // Error
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Failed to post data')),
          );
        }
      }
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error: $e')),
        );
      }
    }
  }
}
