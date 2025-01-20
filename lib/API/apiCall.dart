import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MyApiCall extends StatefulWidget {
  const MyApiCall({super.key});

  @override
  State<MyApiCall> createState() => _MyApiCallState();
}

class _MyApiCallState extends State<MyApiCall> {
  bool isLoading = true;
  List<dynamic> users = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User List'),
      ),
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : users.isEmpty
              ? const Center(
                  child: Text('No users available'),
                )
              : ListView.builder(
                  itemCount: users.length,
                  itemBuilder: (context, index) {
                    final user = users[index];
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(user['avatar']),
                      ),
                      title: Text("${user['first_name']} ${user['last_name']}"),
                      subtitle: Text(user['email']),
                    );
                  },
                ),
    );
  }

  Future<void> fetchData() async {
    try {
      final response =
          await http.get(Uri.parse('https://reqres.in/api/users?page=1'));
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        setState(() {
          users = data['data'];
          isLoading = false;
        });
      } else {
        throw Exception('Failed to load users');
      }
    } catch (e) {
      print('Error fetching users: $e');
      setState(() {
        isLoading = false;
      });
      // if (mounted) {
      //   ScaffoldMessenger.of(context).showSnackBar(
      //     const SnackBar(content: Text('Error fetching users')),
      //   );
      // }
    }
  }
}
